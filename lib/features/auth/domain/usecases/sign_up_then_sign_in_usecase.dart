import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignUpThenSignInUseCase implements UseCase<SignUpParams, SignInResponse> {
  const SignUpThenSignInUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Result<SignInResponse, Failure>> call(SignUpParams input) => _repository.signUpThenSignIn(
    firstName: input.firstName,
    lastName: input.lastName,
    email: input.email,
    password: input.password,
    imageUrl: input.imageUrl,
  );
}
