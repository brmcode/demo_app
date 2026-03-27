import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/features/auth/domain/entity/sign_in_response.dart';

sealed class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInLoading extends SignInState {
  const SignInLoading();
}

class SignInSuccess extends SignInState {
  final SignInResponse user;
  const SignInSuccess(this.user);
}

class SignInError extends SignInState {
  final Failure failure;
  const SignInError(this.failure);
}
