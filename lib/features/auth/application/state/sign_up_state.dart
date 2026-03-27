import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:demo_app/common/exception/failure.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.success(User user) = SignUpSuccess;
  const factory SignUpState.error(Failure failure) = SignUpError;

  const factory SignUpState.data({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    String? confirmPassword,
    String? imagePath,
    @Default(false) bool isLoading, // 👈 ADD THIS
  }) = SignUpData;
}
