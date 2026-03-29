import 'package:demo_app/core/domain/exception/failure.dart';
import 'package:demo_app/features/auth/domain/entity/sign_in_response.dart';
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

  Future<Result<SignInResponse, Failure>> call(GoogleSignInParams params) async {
    return await _repository.googleSignIn(idToken: params.idToken);
  }
}
