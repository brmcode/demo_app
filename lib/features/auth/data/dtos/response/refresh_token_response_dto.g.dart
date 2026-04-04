// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenResponseDto _$RefreshTokenResponseDtoFromJson(
  Map<String, dynamic> json,
) => _RefreshTokenResponseDto(
  accessToken: json['access_token'] as String,
  accessTokenExpiresAt: DateTime.parse(
    json['access_token_expires_at'] as String,
  ),
  refreshToken: json['refresh_token'] as String,
  refreshTokenExpiresAt: DateTime.parse(
    json['refresh_token_expires_at'] as String,
  ),
);

Map<String, dynamic> _$RefreshTokenResponseDtoToJson(
  _RefreshTokenResponseDto instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'access_token_expires_at': instance.accessTokenExpiresAt.toIso8601String(),
  'refresh_token': instance.refreshToken,
  'refresh_token_expires_at': instance.refreshTokenExpiresAt.toIso8601String(),
};
