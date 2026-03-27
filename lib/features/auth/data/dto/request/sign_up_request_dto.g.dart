// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequestDto _$SignUpRequestDtoFromJson(Map<String, dynamic> json) =>
    _SignUpRequestDto(
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      imageUrl: json['image_url'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignUpRequestDtoToJson(_SignUpRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image_url': instance.imageUrl,
      'password': instance.password,
    };
