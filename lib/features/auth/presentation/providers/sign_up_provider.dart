import 'dart:developer';
import 'dart:io';

import 'package:demo_app/config/lib/config/app_config.dart';
import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/domain/usecases/auth_usecase_provider.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:demo_app/features/auth/presentation/states/sign_up_state.dart';
import 'package:demo_app/features/auth/presentation/validators/sign_up_validator.dart';
import 'package:demo_app/features/media/domain/usecases/media_usecase_provider.dart';
import 'package:demo_app/features/media/domain/usecases/upload_avatar_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  void updateStep2({
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    if (state case SignUpData d) {
      state = d.copyWith(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
    }
  }

  void updateStep3({String? imagePath}) {
    if (state case SignUpData d) {
      state = d.copyWith(imagePath: imagePath);
    }
  }

  Future<void> submit() async {
    if (state case SignUpData d) {
      await _doSubmit(d);
    }
  }

  Future<void> _doSubmit(SignUpData d) async {
    // Validate all fields
    final errors = _validate(d);
    if (errors.isNotEmpty) {
      state = SignUpState.error(ValidationFailure(errors.first));
      return;
    }

    state = d.copyWith(isLoading: true);

    String imageUrl = '';

    // Upload avatar if chosen
    if (d.imagePath != null) {
      final uploadResult = await ref.read(uploadAvatarUseCaseProvider).call(UploadAvatarParams(file: File(d.imagePath!)));

      uploadResult.whenSuccess((url) {
        imageUrl = '${AppConfig.baseUrl}${url ?? ''}';
        log('[SignUp] Avatar uploaded: $imageUrl');
      });
      uploadResult.whenError((f) {
        state = SignUpState.error(f);
        return;
      });
    }

    // Register
    final result = await ref
        .read(signUpUseCaseProvider)
        .call(
          SignUpParams(
            firstName: d.firstName,
            lastName: d.lastName,
            email: d.email,
            password: d.password,
            imageUrl: imageUrl,
          ),
        );

    result
      ..whenSuccess((user) => state = SignUpState.success(user))
      ..whenError((f) {
        state = SignUpState.error(f);
      });
  }

  List<String> _validate(SignUpData d) {
    final results = [
      SignUpValidator.firstName(d.firstName),
      SignUpValidator.lastName(d.lastName),
      SignUpValidator.email(d.email),
      SignUpValidator.password(d.password),
      SignUpValidator.confirmPassword(d.password, d.confirmPassword),
    ];
    return results.where((r) => !r.isValid).map((r) => r.message!).toList();
  }
}
