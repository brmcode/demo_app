// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sign_in_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleSignInRequestDto {

@JsonKey(name: "id_token") String get idToken;
/// Create a copy of GoogleSignInRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleSignInRequestDtoCopyWith<GoogleSignInRequestDto> get copyWith => _$GoogleSignInRequestDtoCopyWithImpl<GoogleSignInRequestDto>(this as GoogleSignInRequestDto, _$identity);

  /// Serializes this GoogleSignInRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleSignInRequestDto&&(identical(other.idToken, idToken) || other.idToken == idToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken);

@override
String toString() {
  return 'GoogleSignInRequestDto(idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class $GoogleSignInRequestDtoCopyWith<$Res>  {
  factory $GoogleSignInRequestDtoCopyWith(GoogleSignInRequestDto value, $Res Function(GoogleSignInRequestDto) _then) = _$GoogleSignInRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id_token") String idToken
});




}
/// @nodoc
class _$GoogleSignInRequestDtoCopyWithImpl<$Res>
    implements $GoogleSignInRequestDtoCopyWith<$Res> {
  _$GoogleSignInRequestDtoCopyWithImpl(this._self, this._then);

  final GoogleSignInRequestDto _self;
  final $Res Function(GoogleSignInRequestDto) _then;

/// Create a copy of GoogleSignInRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idToken = null,}) {
  return _then(_self.copyWith(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GoogleSignInRequestDto].
extension GoogleSignInRequestDtoPatterns on GoogleSignInRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleSignInRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleSignInRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleSignInRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _GoogleSignInRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleSignInRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleSignInRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id_token")  String idToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleSignInRequestDto() when $default != null:
return $default(_that.idToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id_token")  String idToken)  $default,) {final _that = this;
switch (_that) {
case _GoogleSignInRequestDto():
return $default(_that.idToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id_token")  String idToken)?  $default,) {final _that = this;
switch (_that) {
case _GoogleSignInRequestDto() when $default != null:
return $default(_that.idToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleSignInRequestDto implements GoogleSignInRequestDto {
  const _GoogleSignInRequestDto({@JsonKey(name: "id_token") required this.idToken});
  factory _GoogleSignInRequestDto.fromJson(Map<String, dynamic> json) => _$GoogleSignInRequestDtoFromJson(json);

@override@JsonKey(name: "id_token") final  String idToken;

/// Create a copy of GoogleSignInRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleSignInRequestDtoCopyWith<_GoogleSignInRequestDto> get copyWith => __$GoogleSignInRequestDtoCopyWithImpl<_GoogleSignInRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleSignInRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleSignInRequestDto&&(identical(other.idToken, idToken) || other.idToken == idToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idToken);

@override
String toString() {
  return 'GoogleSignInRequestDto(idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class _$GoogleSignInRequestDtoCopyWith<$Res> implements $GoogleSignInRequestDtoCopyWith<$Res> {
  factory _$GoogleSignInRequestDtoCopyWith(_GoogleSignInRequestDto value, $Res Function(_GoogleSignInRequestDto) _then) = __$GoogleSignInRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id_token") String idToken
});




}
/// @nodoc
class __$GoogleSignInRequestDtoCopyWithImpl<$Res>
    implements _$GoogleSignInRequestDtoCopyWith<$Res> {
  __$GoogleSignInRequestDtoCopyWithImpl(this._self, this._then);

  final _GoogleSignInRequestDto _self;
  final $Res Function(_GoogleSignInRequestDto) _then;

/// Create a copy of GoogleSignInRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idToken = null,}) {
  return _then(_GoogleSignInRequestDto(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
