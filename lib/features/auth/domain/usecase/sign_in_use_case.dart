import 'package:demo_app/core/domain/exception/failure.dart';
import 'package:demo_app/core/domain/usecase/base_use_case.dart';
import 'package:demo_app/features/auth/domain/entity/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignInParams {
  final String email;
  final String password;
  final String role;

  const SignInParams({
    required this.email,
    required this.password,
    this.role = 'USER',
  });
}

class SignInUseCase implements UseCase<SignInParams, SignInResponse> {
  final AuthRepository _repository;
  const SignInUseCase(this._repository);

  @override
  Future<Result<SignInResponse, Failure>> call(SignInParams params) {
    return _repository.signIn(
      email: params.email,
      password: params.password,
      role: params.role,
    );
  }
}
