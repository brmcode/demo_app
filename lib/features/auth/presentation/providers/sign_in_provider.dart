import 'dart:developer';

import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_provider.dart';
import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/domain/usecases/auth_usecase_provider.dart';
import 'package:demo_app/features/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:demo_app/features/auth/presentation/services/google_sign_in_service.dart' as gsi;
import 'package:demo_app/features/auth/presentation/states/sign_in_state.dart';
import 'package:demo_app/features/auth/presentation/validators/auth_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_provider.g.dart';

@Riverpod(keepAlive: true)
class SignInNotifier extends _$SignInNotifier {
  final _googleService = gsi.GoogleSignInService.instance;

  @override
  SignInState build() => const SignInInitial();

  // ─── Sign-in ────────────────────────────────────────────────

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    final emailErr = AuthValidator.email(email);
    final pwErr = AuthValidator.password(password);
    if (!emailErr.isValid) {
      state = SignInError(ValidationFailure(emailErr.message!));
      return;
    }
    if (!pwErr.isValid) {
      state = SignInError(ValidationFailure(pwErr.message!));
      return;
    }

    state = const SignInLoading();

    final result = await ref
        .read(signInUseCaseProvider)
        .call(
          SignInParams(email: email, password: password),
        );

    result
      ..whenSuccess((user) async {
        await _saveTokens(user.accessToken, user.refreshToken);
        state = SignInSuccess(user);
      })
      ..whenError((f) => state = SignInError(f));
  }

  // ─── Google sign-in ─────────────────────────────────────────

  Future<void> googleSignIn() async {
    state = const SignInLoading();

    final result = await _googleService.signIn(scopeHint: ['email', 'profile']);

    switch (result) {
      case gsi.SignInSuccess(:final idToken):
        final backendResult = await ref
            .read(googleSignInUseCaseProvider)
            .call(
              GoogleSignInParams(idToken: idToken),
            );
        backendResult
          ..whenSuccess((user) async {
            await _saveTokens(user.accessToken, user.refreshToken);
            state = SignInSuccess(user);
          })
          ..whenError((f) async {
            await _googleService.signOut();
            state = SignInError(f);
          });

      case gsi.SignInCancelled():
        state = const SignInInitial();

      case gsi.SignInFailure(:final message):
        log('[SignIn] Google sign-in failed: $message');
        state = SignInError(UnknownFailure(message));
    }
  }

  // ─── Sign-out ────────────────────────────────────────────────

  Future<void> signOut() async {
    final storage = ref.read(secureStorageProvider);
    String? token;

    if (state case SignInSuccess(:final response)) {
      token = response.refreshToken;
    } else {
      token = await storage.read(SecureStorageKeys.refreshToken);
    }

    if (token != null) {
      final result = await ref
          .read(signOutUseCaseProvider)
          .call(
            SignOutParams(refreshToken: token),
          );
      result.whenError(
        (f) => log('[SignIn] Sign-out API error: ${f.message}'),
      );
    }

    await _googleService.signOut();
    await storage.delete(SecureStorageKeys.accessToken);
    await storage.delete(SecureStorageKeys.refreshToken);

    state = const SignInInitial();
  }

  // ─── Helpers ────────────────────────────────────────────────

  void clearError() {
    if (state is SignInError) state = const SignInInitial();
  }

  Future<void> _saveTokens(
    String accessToken,
    String refreshToken,
  ) async {
    final storage = ref.read(secureStorageProvider);
    await storage.write(SecureStorageKeys.accessToken, accessToken);
    await storage.write(SecureStorageKeys.refreshToken, refreshToken);
  }
}
