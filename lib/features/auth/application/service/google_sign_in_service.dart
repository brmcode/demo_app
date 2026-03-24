import 'dart:async';
import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

sealed class SignInResult {
  const SignInResult();
}

class SignInSuccess extends SignInResult {
  final GoogleSignInAccount account;
  final String idToken;
  const SignInSuccess({required this.account, required this.idToken});
}

class SignInCancelled extends SignInResult {
  const SignInCancelled();
}

class SignInFailure extends SignInResult {
  final String message;
  const SignInFailure(this.message);
}

class GoogleSignInService {
  GoogleSignInService._();
  static final GoogleSignInService instance = GoogleSignInService._();

  final _googleSignIn = GoogleSignIn.instance;
  bool _initialized = false;

  Future<void> initialize({String? serverClientId}) async {
    if (_initialized) return;

    try {
      await _googleSignIn.initialize(serverClientId: serverClientId);
      _initialized = true;
      log('[GoogleSignInService] Initialized successfully.');
    } catch (e) {
      log('[GoogleSignInService] Initialization failed: $e');
      rethrow;
    }
  }

  Future<void> _ensureInitialized() async {
    if (!_initialized) {
      await initialize();
    }
  }

  Future<SignInResult> signIn({List<String> scopeHint = const ['email']}) async {
    await _ensureInitialized();

    if (!_googleSignIn.supportsAuthenticate()) {
      return const SignInFailure('Platform does not support authenticate().');
    }

    try {
      final account = await _googleSignIn.authenticate(scopeHint: scopeHint);
      final auth = account.authentication;
      final idToken = auth.idToken;

      if (idToken == null) {
        return const SignInFailure('Failed to retrieve ID token.');
      }

      return SignInSuccess(account: account, idToken: idToken);
    } on GoogleSignInException catch (e) {
      log('[GoogleSignInService] ${e.code}: ${e.description}');
      if (e.code == GoogleSignInExceptionCode.canceled) return const SignInCancelled();
      return SignInFailure(e.description ?? 'Sign-in failed.');
    } catch (e) {
      return const SignInFailure('Unexpected error during sign-in.');
    }
  }

  Future<void> signOut() async {
    await _ensureInitialized();
    await _googleSignIn.signOut();
  }
}
