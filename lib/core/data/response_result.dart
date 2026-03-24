import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_result.freezed.dart';
part 'response_result.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseResult<T> with _$ResponseResult<T> {
  const factory ResponseResult({
    required bool success,
    @JsonKey(name: 'status_code') required int statusCode,
    required String message,
    T? data,
    List<String>? errors,
  }) = _ResponseResult<T>;

  factory ResponseResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ResponseResultFromJson<T>(json, fromJsonT);
}
