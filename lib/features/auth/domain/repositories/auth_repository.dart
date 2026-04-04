import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/entities/user.dart';
import 'package:multiple_result/multiple_result.dart';

/// Pure contract — no Dio, no DTOs, nothing from the data layer.
abstract interface class AuthRepository {
  Future<Result<SignInResponse, Failure>> signIn({
    required String email,
    required String password,
    required String role,
  });

  Future<Result<User, Failure>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String imageUrl,
  });

  Future<Result<void, Failure>> signOut({
    required String refreshToken,
  });

  Future<Result<SignInResponse, Failure>> googleSignIn({
    required String idToken,
  });
}
