import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';

/// Sealed state for the sign-in flow.
sealed class SignInState {
  const SignInState();
}

final class SignInInitial extends SignInState {
  const SignInInitial();
}

final class SignInLoading extends SignInState {
  const SignInLoading();
}

final class SignInSuccess extends SignInState {
  const SignInSuccess(this.response);
  final SignInResponse response;
}

final class SignInError extends SignInState {
  const SignInError(this.failure);
  final Failure failure;
}
