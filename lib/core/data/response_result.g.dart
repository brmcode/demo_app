// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseResult<T> _$ResponseResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ResponseResult<T>(
  success: json['success'] as bool,
  statusCode: (json['status_code'] as num).toInt(),
  message: json['message'] as String,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ResponseResultToJson<T>(
  _ResponseResult<T> instance,
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
