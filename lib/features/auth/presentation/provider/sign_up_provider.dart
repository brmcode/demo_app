import 'dart:developer';
import 'dart:io';

import 'package:demo_app/config/dev.dart';
import 'package:demo_app/core/domain/usecase/media_use_case.dart';
import 'package:demo_app/core/domain/usecase/use_case_provider.dart';
import 'package:demo_app/features/auth/application/validator/sign_up_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:demo_app/features/auth/application/state/sign_up_state.dart';
import 'package:demo_app/common/exception/failure.dart';

part 'sign_up_provider.g.dart';

@Riverpod(keepAlive: true)
class SignUpNotifier extends _$SignUpNotifier {
  @override
  SignUpState build() => const SignUpState.initial();

  void updateStep1({required String firstName, required String lastName}) {
    state = SignUpState.data(
      firstName: firstName,
      lastName: lastName,
      email: '',
      password: '',
    );
  }

  void updateStep2({required String email, required String password, required String confirmPassword}) {
    final currentState = state;
    if (currentState is SignUpData) {
      state = currentState.copyWith(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
    }
  }

  void updateStep3({String? imagePath}) {
    final currentState = state;
    if (currentState is SignUpData) {
      state = currentState.copyWith(imagePath: imagePath);
    }
  }

  Future<void> submit() async {
    String? imageUrl;
    final currentState = state;
    if (currentState is! SignUpData) return;

    log(currentState.toString());
    final errors = SignUpValidator.validateSignUpForm(
      firstName: currentState.firstName,
      lastName: currentState.lastName,
      email: currentState.email,
      password: currentState.password,
      confirmPassword: currentState.confirmPassword ?? '',
    );

    if (errors.isNotEmpty) {
      state = SignUpState.error(ValidationFailure(errors.values.first));
      return;
    }

    state = currentState.copyWith(isLoading: true);

    try {
      await Future.delayed(const Duration(seconds: 2));

      if (currentState.imagePath != null) {
        final uploadImageUseCase = ref.read(uploadAvatarUseCaseProvider);
        log('[UploadImage] Uploading image...');
        final uploadResult = await uploadImageUseCase(
          UploadImageParams(
            file: File(currentState.imagePath!),
          ),
        );
        uploadResult.whenSuccess((url) {
          log('[UploadImage] Upload image successful');
          imageUrl = Config.baseUrl + (url ?? '');
          log('[UploadImage] Image URL: $imageUrl');
        });
        uploadResult.whenError((failure) {
          state = currentState.copyWith(isLoading: false);
          state = SignUpState.error(failure);
        });
      }
      state = currentState.copyWith(isLoading: false);
      // Call backend to create user
      // final user = await ref.read(signUpUseCaseProvider)(...)
      // For demo, we'll mock:
      // final user = User(
      //   id: '1',
      //   firstName: currentState.firstName,
      //   lastName: currentState.lastName,
      //   email: currentState.email,
      //   accessToken: '',
      //   refreshToken: '',
      // );
      // state = SignUpState.success(user);
    } catch (e) {
      state = currentState.copyWith(isLoading: false);
      state = SignUpState.error(UnknownFailure(e.toString()));
    }
  }
}
