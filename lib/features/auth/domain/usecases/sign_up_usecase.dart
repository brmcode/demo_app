import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/auth/domain/entities/user.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignUpParams {
  const SignUpParams({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.imageUrl,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String imageUrl;
}

final class SignUpUseCase implements UseCase<SignUpParams, User> {
  const SignUpUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Result<User, Failure>> call(SignUpParams input) => _repository.signUp(
    firstName: input.firstName,
    lastName: input.lastName,
    email: input.email,
    password: input.password,
    imageUrl: input.imageUrl,
  );
}
