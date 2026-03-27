import 'package:demo_app/core/data/response_result.dart';
import 'package:demo_app/features/auth/data/dto/request/google_sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dto/request/refresh_token_request_dto.dart';
import 'package:demo_app/features/auth/data/dto/request/sign_in_request_dto.dart';
import 'package:demo_app/features/auth/data/dto/request/sign_up_request_dto.dart';
import 'package:demo_app/features/auth/data/dto/response/refresh_token_response_dto.dart';
import 'package:demo_app/features/auth/data/dto/response/sign_in_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/api/auth/login')
  Future<SignInResult<SignInResponseDto>> signIn(@Body() SignInRequestDto body);

  @POST('/api/auth/register')
  Future<ResponseResult<UserDto>> signUp(@Body() SignUpRequestDto body);

  @POST('/api/auth/logout')
  Future<ResponseResult<void>> signOut(@Body() RefreshTokenRequestDto body);

  @POST('/api/oauth/mobile/google')
  Future<SignInResult<SignInResponseDto>> googleSignIn(@Body() GoogleSignInRequestDto body);

  @POST('/api/auth/refresh')
  Future<ResponseResult<RefreshTokenResponseDto>> refreshToken(@Body() RefreshTokenRequestDto body);
}
