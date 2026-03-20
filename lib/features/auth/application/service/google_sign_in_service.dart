import 'dart:async';
import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

/// Result wrapper for sign-in operations.
sealed class SignInResult {
  const SignInResult();
}

class SignInSuccess extends SignInResult {
  final GoogleSignInAccount account;
  const SignInSuccess(this.account);
}

class SignInCancelled extends SignInResult {
  const SignInCancelled();
}

class SignInFailure extends SignInResult {
  final String message;
  final Object? error;
  const SignInFailure(this.message, {this.error});
}

class GoogleSignInService {
  GoogleSignInService._();
  static final GoogleSignInService instance = GoogleSignInService._();

  final _googleSignIn = GoogleSignIn.instance;
  bool _initialized = false;
  GoogleSignInAccount? _currentUser;

  final StreamController<GoogleSignInAccount?> _userController = StreamController<GoogleSignInAccount?>.broadcast();

  Stream<GoogleSignInAccount?> get authStateChanges => _userController.stream;
  GoogleSignInAccount? get currentUser => _currentUser;
  bool get isSignedIn => _currentUser != null;

  Future<void> initialize({String? serverClientId}) async {
    if (_initialized) return;

    try {
      await _googleSignIn.initialize(serverClientId: serverClientId);
      _googleSignIn.authenticationEvents.listen(_handleAuthenticationEvent).onError(_handleAuthenticationError);
      _initialized = true;
      log('[GoogleSignInService] Initialized successfully.');
    } catch (e) {
      log('[GoogleSignInService] Initialization failed: $e');
      rethrow;
    }
  }

  void _handleAuthenticationEvent(GoogleSignInAuthenticationEvent event) {
    switch (event) {
      case GoogleSignInAuthenticationEventSignIn(:final user):
        _updateUser(user);
      case GoogleSignInAuthenticationEventSignOut():
        _updateUser(null);
    }
  }

  void _handleAuthenticationError(Object error, StackTrace stack) {
    log('[GoogleSignInService] Auth stream error: $error');
    _updateUser(null);
  }

  void _updateUser(GoogleSignInAccount? user) {
    _currentUser = user;
    _userController.add(user);
  }

  Future<void> _ensureInitialized() async {
    if (!_initialized) {
      await initialize();
    }
  }

  Future<GoogleSignInAccount?> attemptSilentSignIn() async {
    await _ensureInitialized();

    try {
      final result = _googleSignIn.attemptLightweightAuthentication();
      if (result is Future<GoogleSignInAccount?>) {
        return await result;
      }
      return result as GoogleSignInAccount?;
    } catch (e) {
      log('[GoogleSignInService] Silent sign-in failed: $e');
      return null;
    }
  }

  Future<SignInResult> signIn({List<String> scopeHint = const ['email']}) async {
    await _ensureInitialized();

    if (!_googleSignIn.supportsAuthenticate()) {
      return const SignInFailure('Platform does not support authenticate().');
    }

    try {
      final account = await _googleSignIn.authenticate(scopeHint: scopeHint);
      _updateUser(account);
      return SignInSuccess(account);
    } on GoogleSignInException catch (e) {
      final message = _exceptionToMessage(e);
      log('[GoogleSignInService] GoogleSignInException: ${e.code} – ${e.description}');
      if (e.code == GoogleSignInExceptionCode.canceled) {
        return const SignInCancelled();
      }
      return SignInFailure(message, error: e);
    } catch (e) {
      log('[GoogleSignInService] Unexpected error: $e');
      return SignInFailure('An unexpected error occurred.', error: e);
    }
  }

  Future<void> signOut() async {
    await _ensureInitialized();
    await _googleSignIn.signOut();
    _updateUser(null);
  }

  GoogleSignInAuthentication? getAuthTokens() {
    if (_currentUser == null) return null;
    return _currentUser!.authentication;
  }

  Future<GoogleSignInClientAuthorization?> requestScopes(List<String> scopes) async {
    if (_currentUser == null) return null;
    await _ensureInitialized();

    try {
      final cached = await _currentUser!.authorizationClient.authorizationForScopes(scopes);
      if (cached != null) return cached;

      return await _currentUser!.authorizationClient.authorizeScopes(scopes);
    } on GoogleSignInException catch (e) {
      log('[GoogleSignInService] requestScopes error: ${e.code} – ${e.description}');
      return null;
    } catch (e) {
      log('[GoogleSignInService] requestScopes unexpected error: $e');
      return null;
    }
  }

  Future<String?> getServerAuthCode(List<String> scopes) async {
    if (_currentUser == null) return null;
    await _ensureInitialized();

    try {
      final serverAuth = await _currentUser!.authorizationClient.authorizeServer(scopes);
      return serverAuth?.serverAuthCode;
    } catch (e) {
      log('[GoogleSignInService] getServerAuthCode error: $e');
      return null;
    }
  }

  String _exceptionToMessage(GoogleSignInException e) {
    return switch (e.code) {
      GoogleSignInExceptionCode.canceled => 'Sign-in was cancelled.',
      GoogleSignInExceptionCode.interrupted => 'Sign-in was interrupted. Please try again.',
      GoogleSignInExceptionCode.clientConfigurationError => 'Configuration issue with Google Sign-In. Please contact support.',
      GoogleSignInExceptionCode.providerConfigurationError => 'Google Sign-In is currently unavailable. Please try again later.',
      GoogleSignInExceptionCode.uiUnavailable => 'Google Sign-In UI is unavailable. Please try again.',
      GoogleSignInExceptionCode.userMismatch => 'Account mismatch detected. Please sign out and try again.',
      GoogleSignInExceptionCode.unknownError => () {
        final detail = e.description != null ? ' (${e.description})' : '';
        return 'An unexpected error occurred during Google Sign-In.$detail';
      }(),
    };
  }

  void dispose() {
    _userController.close();
  }
}
