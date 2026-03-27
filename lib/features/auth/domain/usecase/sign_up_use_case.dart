import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/core/domain/usecase/base_use_case.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignUpParams {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String imageUrl;

  const SignUpParams({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.imageUrl,
  });
}

class SignUpUseCase implements UseCase<SignUpParams, User> {
  final AuthRepository _repository;
  const SignUpUseCase(this._repository);

  @override
  Future<Result<User, Failure>> call(SignUpParams params) {
    return _repository.signUp(
      firstName: params.firstName,
      lastName: params.lastName,
      email: params.email,
      password: params.password,
      imageUrl: params.imageUrl,
    );
  }
}
