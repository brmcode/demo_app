import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_dto.freezed.dart';
part 'sign_in_response_dto.g.dart';

// ---- nested: user object ----
@freezed
abstract class UserDto with _$UserDto {
  const factory UserDto({
    required String username,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String role,
    @JsonKey(name: 'password_changed_at') required String passwordChangedAt,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

// ---- root data object ----
@freezed
abstract class SignInResponseDto with _$SignInResponseDto {
  const factory SignInResponseDto({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'access_token_expires_at') required String accessTokenExpiresAt,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'refresh_token_expires_at') required String refreshTokenExpiresAt,
    required UserDto user,
  }) = _SignInResponseDto;

  factory SignInResponseDto.fromJson(Map<String, dynamic> json) => _$SignInResponseDtoFromJson(json);
}
