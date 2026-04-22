import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.success(SignInResponse response) = SignUpSuccess;
  const factory SignUpState.error(Failure failure) = SignUpError;

  const factory SignUpState.data({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    String? confirmPassword,
    String? imagePath,
    String? submitError,
    @Default(false) bool isLoading,
  }) = SignUpData;
}
