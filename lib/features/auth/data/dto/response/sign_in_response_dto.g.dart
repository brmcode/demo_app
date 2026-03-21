// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInResult<T> _$SignInResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _SignInResult<T>(
  success: json['success'] as bool,
  statusCode: (json['status_code'] as num).toInt(),
  message: json['message'] as String,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$SignInResultToJson<T>(
  _SignInResult<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'errors': instance.errors,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_SignInResponseDto _$SignInResponseDtoFromJson(Map<String, dynamic> json) =>
    _SignInResponseDto(
      sessionId: json['session_id'] as String,
      accessToken: json['access_token'] as String,
      accessTokenExpiresAt: DateTime.parse(
        json['access_token_expires_at'] as String,
      ),
      refreshToken: json['refresh_token'] as String,
      refreshTokenExpiresAt: DateTime.parse(
        json['refresh_token_expires_at'] as String,
      ),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseDtoToJson(
  _SignInResponseDto instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'access_token': instance.accessToken,
  'access_token_expires_at': instance.accessTokenExpiresAt.toIso8601String(),
  'refresh_token': instance.refreshToken,
  'refresh_token_expires_at': instance.refreshTokenExpiresAt.toIso8601String(),
  'user': instance.user,
};

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  username: json['username'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  email: json['email'] as String,
  imageUrl: json['image_url'] as String,
  role: json['role'] as String,
  passwordChangedAt: DateTime.parse(json['password_changed_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'username': instance.username,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'image_url': instance.imageUrl,
  'role': instance.role,
  'password_changed_at': instance.passwordChangedAt.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
};
