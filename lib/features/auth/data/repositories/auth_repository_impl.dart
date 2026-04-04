import 'package:demo_app/core/data/remote/dio_error_mapper.dart';
import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:demo_app/features/auth/data/dtos/request/google_sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/refresh_token_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/sign_up_request_dto.dart';
import 'package:demo_app/features/auth/data/mappers/auth_mapper.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/entities/user.dart';
import 'package:demo_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) => _AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));

final class _AuthRepositoryImpl implements AuthRepository {
  const _AuthRepositoryImpl(this._dataSource);
  final AuthRemoteDataSource _dataSource;

  @override
  Future<Result<SignInResponse, Failure>> signIn({
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      final result = await _dataSource.signIn(
        SignInRequestDto(email: email, password: password, role: role),
      );
      if (!result.success) {
        return Error(
          ServerFailure(result.message, statusCode: result.statusCode),
        );
      }
      return Success(AuthMapper.fromSignInResponseDto(result.data!));
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<User, Failure>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String imageUrl,
  }) async {
    try {
      final result = await _dataSource.signUp(
        SignUpRequestDto(
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          imageUrl: imageUrl,
        ),
      );
      if (!result.success) {
        return Error(
          ServerFailure(result.message, statusCode: result.statusCode),
        );
      }
      return Success(AuthMapper.fromUserDto(result.data!));
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<void, Failure>> signOut({
    required String refreshToken,
  }) async {
    try {
      final result = await _dataSource.signOut(
        RefreshTokenRequestDto(refreshToken: refreshToken),
      );
      if (!result.success) {
        return Error(
          ServerFailure(result.message, statusCode: result.statusCode),
        );
      }
      return const Success(null);
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<SignInResponse, Failure>> googleSignIn({
    required String idToken,
  }) async {
    try {
      final result = await _dataSource.googleSignIn(
        GoogleSignInRequestDto(idToken: idToken),
      );
      if (!result.success) {
        return Error(
          ServerFailure(result.message, statusCode: result.statusCode),
        );
      }
      return Success(AuthMapper.fromSignInResponseDto(result.data!));
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }
}
