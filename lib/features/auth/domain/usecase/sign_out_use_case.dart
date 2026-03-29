import 'package:demo_app/core/domain/exception/failure.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class SignOutParams {
  final String refreshToken;

  const SignOutParams({
    required this.refreshToken,
  });
}

class SignOutUseCase {
  final AuthRepository _repository;
  const SignOutUseCase(this._repository);

  Future<Result<void, Failure>> call(SignOutParams params) async {
    return await _repository.signOut(refreshToken: params.refreshToken);
  }
}
