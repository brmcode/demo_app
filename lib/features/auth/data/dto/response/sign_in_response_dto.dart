import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_dto.freezed.dart';
part 'sign_in_response_dto.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class SignInResult<T> with _$SignInResult<T> {
  const factory SignInResult({
    required bool success,
    @JsonKey(name: 'status_code') required int statusCode,
    required String message,
    T? data,
    List<String>? errors,
  }) = _SignInResult<T>;

  factory SignInResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$SignInResultFromJson<T>(json, fromJsonT);
}

@freezed
abstract class SignInResponseDto with _$SignInResponseDto {
  const factory SignInResponseDto({
    @JsonKey(name: "session_id") required String sessionId,
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "access_token_expires_at") required DateTime accessTokenExpiresAt,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "refresh_token_expires_at") required DateTime refreshTokenExpiresAt,
    required UserDto user,
  }) = _SignInResponseDto;

  factory SignInResponseDto.fromJson(Map<String, dynamic> json) => _$SignInResponseDtoFromJson(json);
}

@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String username,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String email,
    @JsonKey(name: "image_url") required String imageUrl,
    required String role,
    @JsonKey(name: "password_changed_at") required DateTime passwordChangedAt,
    @JsonKey(name: "created_at") required DateTime createdAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
