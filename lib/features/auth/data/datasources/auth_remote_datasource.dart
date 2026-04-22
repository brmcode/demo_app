import 'package:demo_app/core/data/remote/dio_provider.dart';
import 'package:demo_app/core/data/response_result.dart';
import 'package:demo_app/features/auth/data/dtos/request/google_sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/refresh_token_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/request/sign_up_request_dto.dart';
import 'package:demo_app/features/auth/data/dtos/response/refresh_token_response_dto.dart';
import 'package:demo_app/features/auth/data/dtos/response/sign_in_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_remote_datasource.g.dart';

/// Retrofit-generated HTTP client — data source, not a repository.
@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String? baseUrl}) = _AuthRemoteDataSource;

  @POST('/api/auth/register_login')
  Future<SignInResult<SignInResponseDto>> signUpThenSignIn(
    @Body() SignUpRequestDto body,
  );

  @POST('/api/auth/login')
  Future<SignInResult<SignInResponseDto>> signIn(
    @Body() SignInRequestDto body,
  );

  @POST('/api/auth/register')
  Future<ResponseResult<UserDto>> signUp(
    @Body() SignUpRequestDto body,
  );

  @POST('/api/auth/logout')
  Future<ResponseResult<void>> signOut(
    @Body() RefreshTokenRequestDto body,
  );

  @POST('/api/oauth/mobile/google')
  Future<SignInResult<SignInResponseDto>> googleSignIn(
    @Body() GoogleSignInRequestDto body,
  );

  @POST('/api/auth/refresh')
  Future<ResponseResult<RefreshTokenResponseDto>> refreshToken(
    @Body() RefreshTokenRequestDto body,
  );
}

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) => AuthRemoteDataSource(ref.watch(dioProvider));
