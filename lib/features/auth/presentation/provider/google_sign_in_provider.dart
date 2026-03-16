// lib/features/auth/presentation/provider/google_sign_in_provider.dart

import 'dart:developer';

import 'package:demo_app/features/auth/application/state/google_sign_in_state.dart';
import 'package:demo_app/features/auth/application/service/google_sign_in_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_sign_in_provider.g.dart';

@Riverpod(keepAlive: true)
class GoogleSignInNotifier extends _$GoogleSignInNotifier {
  final _service = GoogleSignInService.instance;

  @override
  GoogleSignInState build() {
    _init();
    return const GoogleSignInInitializing();
  }

  Future<void> _init() async {
    try {
      await _service.initialize();
      // await _service.attemptSilentSignIn();

      if (_service.isSignedIn && _service.currentUser != null) {
        state = GoogleSignInAuthenticated(_service.currentUser!);
      } else {
        state = const GoogleSignInUnauthenticated();
      }
    } catch (e) {
      state = const GoogleSignInError('Google Sign-In initialization failed.');
    }
  }

  Future<void> signIn() async {
    state = const GoogleSignInLoading();

    final result = await _service.signIn(scopeHint: ['email', 'profile']);

    switch (result) {
      case SignInSuccess(:final account):
        log('[GoogleSignInNotifier] Sign-in successful: ${account.email}');
        state = GoogleSignInAuthenticated(account);
      case SignInCancelled():
        state = const GoogleSignInUnauthenticated();
      case SignInFailure(:final message):
        state = GoogleSignInError(message);
    }
  }

  Future<void> signOut() async {
    state = const GoogleSignInLoading();
    await _service.signOut();
    state = const GoogleSignInUnauthenticated();
  }

  void clearError() {
    if (state is GoogleSignInError) {
      state = const GoogleSignInUnauthenticated();
    }
  }
}
