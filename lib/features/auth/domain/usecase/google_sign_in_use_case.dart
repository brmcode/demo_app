import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class GoogleSignInParams {
  final String idToken;

  const GoogleSignInParams({
    required this.idToken,
  });
}

class GoogleSignInUseCase {
  final AuthRepository _repository;
  const GoogleSignInUseCase(this._repository);

  Future<Result<User, Failure>> call(GoogleSignInParams params) async {
    return await _repository.googleSignIn(idToken: params.idToken);
  }
}
