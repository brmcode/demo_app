import 'dart:async';
import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

/// Thin wrapper around the Google Sign-In SDK.
/// Lives in the presentation layer - it is UI/platform infrastructure,
/// not a domain concern.
sealed class SignInResult {
  const SignInResult();
}

final class SignInSuccess extends SignInResult {
  const SignInSuccess({required this.account, required this.idToken});
  final GoogleSignInAccount account;
  final String idToken;
}

final class SignInCancelled extends SignInResult {
  const SignInCancelled();
}

final class SignInFailure extends SignInResult {
  const SignInFailure(this.message);
  final String message;
}

final class GoogleSignInService {
  GoogleSignInService._();
  static final instance = GoogleSignInService._();

  final _googleSignIn = GoogleSignIn.instance;
  bool _initialized = false;

  Future<void> initialize({String? serverClientId}) async {
    if (_initialized) return;
    try {
      await _googleSignIn.initialize(serverClientId: serverClientId);
      _initialized = true;
    } catch (e) {
      log('[GoogleSignInService] init failed: $e');
      rethrow;
    }
  }

  Future<SignInResult> signIn({
    List<String> scopeHint = const ['email'],
  }) async {
    await _ensureInitialized();
    if (!_googleSignIn.supportsAuthenticate()) {
      return const SignInFailure(
        'Platform does not support authenticate().',
      );
    }
    try {
      final account = await _googleSignIn.authenticate(
        scopeHint: scopeHint,
      );
      final idToken = account.authentication.idToken;
      if (idToken == null) {
        return const SignInFailure('Failed to retrieve ID token.');
      }
      return SignInSuccess(account: account, idToken: idToken);
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        return const SignInCancelled();
      }
      return SignInFailure(e.description ?? 'Sign-in failed.');
    } catch (_) {
      return const SignInFailure('Unexpected error during sign-in.');
    }
  }

  Future<void> signOut() async {
    await _ensureInitialized();
    await _googleSignIn.signOut();
  }

  Future<void> _ensureInitialized() async {
    if (!_initialized) await initialize();
  }
}
