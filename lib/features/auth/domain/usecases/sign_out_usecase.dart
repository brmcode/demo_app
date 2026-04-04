import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignOutParams {
  const SignOutParams({required this.refreshToken});
  final String refreshToken;
}

final class SignOutUseCase implements UseCase<SignOutParams, void> {
  const SignOutUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Result<void, Failure>> call(SignOutParams input) => _repository.signOut(refreshToken: input.refreshToken);
}
