import 'package:demo_app/features/auth/data/dto/request/refresh_token_request_dto.dart';
import 'package:demo_app/features/auth/data/dto/response/refresh_token_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:demo_app/features/auth/data/remote/auth_api.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage _secureStorage;
  final AuthApi _authApi;

  AuthInterceptor(this._secureStorage, this._authApi);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Skip token addition for login endpoint
    if (options.path.contains('/api/auth/login')) {
      handler.next(options);
      return;
    }

    // Add access token to headers
    final accessToken = await _secureStorage.read(accessTokenKey);
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Check if it's a 401 error and we have a refresh token
    if (err.response?.statusCode == 401) {
      final refreshToken = await _secureStorage.read(refreshTokenKey);

      if (refreshToken != null) {
        try {
          // Attempt to refresh the token
          final refreshRequest = RefreshTokenRequestDto(refreshToken: refreshToken);
          final newTokens = await _refreshToken(refreshRequest);

          // Save new tokens
          await _secureStorage.write(accessTokenKey, newTokens.accessToken);
          await _secureStorage.write(refreshTokenKey, newTokens.refreshToken);

          // Retry the original request with new token
          final originalRequest = err.requestOptions;
          originalRequest.headers['Authorization'] = 'Bearer ${newTokens.accessToken}';

          final response = await Dio().fetch(originalRequest);
          handler.resolve(response);
          return;
        } catch (e) {
          // Refresh failed, clear tokens and proceed with original error
          await _clearTokens();
        }
      }
    }

    handler.next(err);
  }

  Future<RefreshTokenResponseDto> _refreshToken(RefreshTokenRequestDto refreshToken) async {
    final response = await _authApi.refreshToken(refreshToken);
    if (response.success && response.data != null) {
      return response.data!;
    } else {
      throw Exception('Failed to refresh token: ${response.message}');
    }
  }

  Future<void> _clearTokens() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }
}
