import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/core/usecase/base_use_case.dart';
import 'package:demo_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_use_case.g.dart';

final class SignInParams {
  final String email;
  final String password;
  final String role;

  const SignInParams({
    required this.email,
    required this.password,
    this.role = 'USER', // default USER ตาม API
  });
}

class SignInUseCase implements UseCase<SignInParams, User> {
  final AuthRepository _repository;

  const SignInUseCase(this._repository);

  @override
  Future<Result<User, Failure>> call(SignInParams params) {
    return _repository.signIn(
      email: params.email,
      password: params.password,
      role: params.role,
    );
  }
}

@riverpod
SignInUseCase signInUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInUseCase(authRepository);
}
