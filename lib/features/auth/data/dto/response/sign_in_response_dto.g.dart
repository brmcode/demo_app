// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  username: json['username'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  passwordChangedAt: json['password_changed_at'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'username': instance.username,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'role': instance.role,
  'password_changed_at': instance.passwordChangedAt,
  'created_at': instance.createdAt,
};

_SignInResponseDto _$SignInResponseDtoFromJson(Map<String, dynamic> json) =>
    _SignInResponseDto(
      sessionId: json['session_id'] as String,
      accessToken: json['access_token'] as String,
      accessTokenExpiresAt: json['access_token_expires_at'] as String,
      refreshToken: json['refresh_token'] as String,
      refreshTokenExpiresAt: json['refresh_token_expires_at'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseDtoToJson(_SignInResponseDto instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'access_token': instance.accessToken,
      'access_token_expires_at': instance.accessTokenExpiresAt,
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_at': instance.refreshTokenExpiresAt,
      'user': instance.user,
    };
