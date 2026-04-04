import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:demo_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:demo_app/features/auth/data/dtos/request/refresh_token_request_dto.dart';
import 'package:dio/dio.dart';

/// Injects access-token and transparently refreshes it on 401.
final class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._storage, this._authDs);

  final SecureStorage _storage;
  final AuthRemoteDataSource _authDs;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!_requiresAuth(options.path)) {
      return handler.next(options);
    }
    final token = await _storage.read(SecureStorageKeys.accessToken);
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401) return handler.next(err);

    final refreshToken = await _storage.read(SecureStorageKeys.refreshToken);
    if (refreshToken == null) return handler.next(err);

    try {
      final result = await _authDs.refreshToken(
        RefreshTokenRequestDto(refreshToken: refreshToken),
      );
      if (result.success && result.data != null) {
        await _storage.write(
          SecureStorageKeys.accessToken,
          result.data!.accessToken,
        );
        await _storage.write(
          SecureStorageKeys.refreshToken,
          result.data!.refreshToken,
        );
        final retried = err.requestOptions..headers['Authorization'] = 'Bearer ${result.data!.accessToken}';
        final response = await Dio().fetch(retried);
        return handler.resolve(response);
      }
    } catch (_) {
      await _storage.delete(SecureStorageKeys.accessToken);
      await _storage.delete(SecureStorageKeys.refreshToken);
    }
    handler.next(err);
  }

  bool _requiresAuth(String path) => !path.contains('/api/auth/login') && !path.contains('/api/auth/register');
}
