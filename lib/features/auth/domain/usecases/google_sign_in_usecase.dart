import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:multiple_result/multiple_result.dart';

final class GoogleSignInParams {
  const GoogleSignInParams({required this.idToken});
  final String idToken;
}

final class GoogleSignInUseCase implements UseCase<GoogleSignInParams, SignInResponse> {
  const GoogleSignInUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Result<SignInResponse, Failure>> call(GoogleSignInParams input) => _repository.googleSignIn(idToken: input.idToken);
}
