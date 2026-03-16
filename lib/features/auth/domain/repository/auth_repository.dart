import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class AuthRepository {
  Future<Result<User, Failure>> signIn({
    required String email,
    required String password,
    required String role,
  });

  Future<Result<void, Failure>> signOut();
}
