import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignInParams {
  const SignInParams({
    required this.email,
    required this.password,
    this.role = 'USER',
  });

  final String email;
  final String password;
  final String role;
}

final class SignInUseCase implements UseCase<SignInParams, SignInResponse> {
  const SignInUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Result<SignInResponse, Failure>> call(SignInParams input) => _repository.signIn(
    email: input.email,
    password: input.password,
    role: input.role,
  );
}
