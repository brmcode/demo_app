import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/core/data/remote/dio_provider.dart';
import 'package:demo_app/core/data/response_result.dart';
import 'package:demo_app/features/auth/data/dto/request/sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/mapper/auth_mapper.dart';
import 'package:demo_app/features/auth/data/remote/auth_api.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';
import 'package:demo_app/features/auth/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';

import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return _AuthRepository(AuthApi(dio));
}

class _AuthRepository implements AuthRepository {
  final AuthApi _api;
  const _AuthRepository(this._api);

  @override
  Future<Result<User, Failure>> signIn({
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      final response = await _api.signIn(
        // freezed const factory constructor
        SignInRequestDto(email: email, password: password, role: role),
      );
      return _unwrap(response, (data) => AuthMapper.fromDto(data!));
    } on DioException catch (e) {
      return Error(_mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<void, Failure>> signOut() async {
    try {
      return const Success(null);
    } catch (_) {
      return const Success(null);
    }
  }

  Result<S, Failure> _unwrap<D, S>(
    ResponseResult<D> response,
    S Function(D? data) mapper,
  ) {
    if (!response.success) {
      return Error(ServerFailure(response.message, statusCode: response.statusCode));
    }
    if (response.errors != null && response.errors!.isNotEmpty) {
      return Error(ServerFailure(response.errors!.join(', ')));
    }
    return Success(mapper(response.data));
  }

  Failure _mapDioError(DioException e) => switch (e.type) {
    DioExceptionType.connectionTimeout ||
    DioExceptionType.receiveTimeout ||
    DioExceptionType.sendTimeout => const NetworkFailure('Request timed out'),
    DioExceptionType.connectionError => const NetworkFailure('No internet connection'),
    DioExceptionType.badResponse => ServerFailure(
      e.response?.data!['message'] ?? 'Server error',
      statusCode: e.response?.statusCode,
    ),
    _ => const UnknownFailure(),
  };
}
