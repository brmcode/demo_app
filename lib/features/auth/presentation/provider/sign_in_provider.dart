import 'dart:developer';

import 'package:demo_app/core/domain/exception/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_provider.dart';
import 'package:demo_app/features/auth/application/state/sign_in_state.dart';
import 'package:demo_app/features/auth/application/service/google_sign_in_service.dart' as service;
import 'package:demo_app/features/auth/application/validator/auth_validator.dart';
import 'package:demo_app/features/auth/domain/usecase/auth_use_case_provider.dart';
import 'package:demo_app/features/auth/domain/usecase/google_sign_in_use_case.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_in_use_case.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_out_use_case.dart';

part 'sign_in_provider.g.dart';

@Riverpod(keepAlive: true)
class SignInNotifier extends _$SignInNotifier {
  final _googleService = service.GoogleSignInService.instance;

  @override
  SignInState build() => const SignInInitial();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    final errors = AuthValidator.validateSignInForm(
      email: email,
      password: password,
    );

    if (errors.isNotEmpty) {
      state = SignInError(ValidationFailure(errors.values.first));
      return;
    }

    state = const SignInLoading();

    final useCase = ref.read(signInUseCaseProvider);
    final result = await useCase(
      SignInParams(
        email: email,
        password: password,
      ),
    );

    result.whenSuccess((user) async {
      await _saveTokens(user.accessToken, user.refreshToken);
      state = SignInSuccess(user);
    });
    result.whenError((failure) => state = SignInError(failure));
  }

  Future<void> googleSignIn() async {
    state = const SignInLoading();

    final result = await _googleService.signIn(scopeHint: ['email', 'profile']);

    switch (result) {
      case service.SignInSuccess(:final idToken):
        log('[GoogleSignIn] Got ID token, sending to backend...');
        final useCase = ref.read(googleSignInUseCaseProvider);
        final backendResult = await useCase(GoogleSignInParams(idToken: idToken));

        backendResult.whenSuccess((user) async {
          await _saveTokens(user.accessToken, user.refreshToken);
          state = SignInSuccess(user);
        });
        backendResult.whenError((failure) async {
          await _googleService.signOut();
          state = SignInError(failure);
          log("GoogleSignInError: ${failure.message}");
        });
      case service.SignInCancelled():
        state = const SignInInitial();
      case service.SignInFailure(:final message):
        log("SignInFailure: $message");
        state = SignInError(UnknownFailure(message));
    }
  }

  Future<void> signOut() async {
    final secureStorage = ref.read(secureStorageProvider);
    final currentState = state;

    String? token;
    if (currentState is SignInSuccess) {
      token = currentState.user.refreshToken;
    } else {
      token = await secureStorage.read(refreshTokenKey);
    }

    if (token != null) {
      final useCase = ref.read(signOutUseCaseProvider);
      final result = await useCase(SignOutParams(refreshToken: token));

      result.whenSuccess((_) {
        log('[AuthNotifier] Backend Sign-out successful');
      });
      result.whenError((failure) {
        log("SignOut API Error: ${failure.message}");
        // We still proceed to clear local data anyway
      });
    }

    await _googleService.signOut();
    await secureStorage.delete(accessTokenKey);
    await secureStorage.delete(refreshTokenKey);

    log('[AuthNotifier] Local Sign-out successful');
    state = const SignInInitial();
  }

  Future<void> _saveTokens(String accessToken, String refreshToken) async {
    final secureStorage = ref.read(secureStorageProvider);
    await secureStorage.write(accessTokenKey, accessToken);
    await secureStorage.write(refreshTokenKey, refreshToken);
  }

  void reset() => state = const SignInInitial();

  void clearError() {
    if (state is SignInError) {
      state = const SignInInitial();
    }
  }
}
