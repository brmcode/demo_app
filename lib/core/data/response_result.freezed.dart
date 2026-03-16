// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseResult<T> {

 bool get success;@JsonKey(name: 'status_code') int get statusCode; String get message; T? get data; List<String>? get errors;
/// Create a copy of ResponseResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseResultCopyWith<T, ResponseResult<T>> get copyWith => _$ResponseResultCopyWithImpl<T, ResponseResult<T>>(this as ResponseResult<T>, _$identity);

  /// Serializes this ResponseResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseResult<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ResponseResult<$T>(success: $success, statusCode: $statusCode, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ResponseResultCopyWith<T,$Res>  {
  factory $ResponseResultCopyWith(ResponseResult<T> value, $Res Function(ResponseResult<T>) _then) = _$ResponseResultCopyWithImpl;
@useResult
$Res call({
 bool success,@JsonKey(name: 'status_code') int statusCode, String message, T? data, List<String>? errors
});




}
/// @nodoc
class _$ResponseResultCopyWithImpl<T,$Res>
    implements $ResponseResultCopyWith<T, $Res> {
  _$ResponseResultCopyWithImpl(this._self, this._then);

  final ResponseResult<T> _self;
  final $Res Function(ResponseResult<T>) _then;

/// Create a copy of ResponseResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? statusCode = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseResult].
extension ResponseResultPatterns<T> on ResponseResult<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseResult<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseResult<T> value)  $default,){
final _that = this;
switch (_that) {
case _ResponseResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseResult<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message,  T? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseResult() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.errors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message,  T? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _ResponseResult():
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.errors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message,  T? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _ResponseResult() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ResponseResult<T> implements ResponseResult<T> {
  const _ResponseResult({required this.success, @JsonKey(name: 'status_code') required this.statusCode, required this.message, this.data, final  List<String>? errors}): _errors = errors;
  factory _ResponseResult.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ResponseResultFromJson(json,fromJsonT);

@override final  bool success;
@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  String message;
@override final  T? data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ResponseResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseResultCopyWith<T, _ResponseResult<T>> get copyWith => __$ResponseResultCopyWithImpl<T, _ResponseResult<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ResponseResultToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseResult<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ResponseResult<$T>(success: $success, statusCode: $statusCode, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ResponseResultCopyWith<T,$Res> implements $ResponseResultCopyWith<T, $Res> {
  factory _$ResponseResultCopyWith(_ResponseResult<T> value, $Res Function(_ResponseResult<T>) _then) = __$ResponseResultCopyWithImpl;
@override @useResult
$Res call({
 bool success,@JsonKey(name: 'status_code') int statusCode, String message, T? data, List<String>? errors
});




}
/// @nodoc
class __$ResponseResultCopyWithImpl<T,$Res>
    implements _$ResponseResultCopyWith<T, $Res> {
  __$ResponseResultCopyWithImpl(this._self, this._then);

  final _ResponseResult<T> _self;
  final $Res Function(_ResponseResult<T>) _then;

/// Create a copy of ResponseResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? statusCode = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_ResponseResult<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
