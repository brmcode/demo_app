// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshTokenResponseDto {

@JsonKey(name: "access_token") String get accessToken;@JsonKey(name: "access_token_expires_at") DateTime get accessTokenExpiresAt;@JsonKey(name: "refresh_token") String get refreshToken;@JsonKey(name: "refresh_token_expires_at") DateTime get refreshTokenExpiresAt;
/// Create a copy of RefreshTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenResponseDtoCopyWith<RefreshTokenResponseDto> get copyWith => _$RefreshTokenResponseDtoCopyWithImpl<RefreshTokenResponseDto>(this as RefreshTokenResponseDto, _$identity);

  /// Serializes this RefreshTokenResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenResponseDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accessTokenExpiresAt,refreshToken,refreshTokenExpiresAt);

@override
String toString() {
  return 'RefreshTokenResponseDto(accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenResponseDtoCopyWith<$Res>  {
  factory $RefreshTokenResponseDtoCopyWith(RefreshTokenResponseDto value, $Res Function(RefreshTokenResponseDto) _then) = _$RefreshTokenResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "access_token_expires_at") DateTime accessTokenExpiresAt,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_token_expires_at") DateTime refreshTokenExpiresAt
});




}
/// @nodoc
class _$RefreshTokenResponseDtoCopyWithImpl<$Res>
    implements $RefreshTokenResponseDtoCopyWith<$Res> {
  _$RefreshTokenResponseDtoCopyWithImpl(this._self, this._then);

  final RefreshTokenResponseDto _self;
  final $Res Function(RefreshTokenResponseDto) _then;

/// Create a copy of RefreshTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accessTokenExpiresAt = null,Object? refreshToken = null,Object? refreshTokenExpiresAt = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenResponseDto].
extension RefreshTokenResponseDtoPatterns on RefreshTokenResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenResponseDto() when $default != null:
return $default(_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResponseDto():
return $default(_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenResponseDto() when $default != null:
return $default(_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshTokenResponseDto implements RefreshTokenResponseDto {
  const _RefreshTokenResponseDto({@JsonKey(name: "access_token") required this.accessToken, @JsonKey(name: "access_token_expires_at") required this.accessTokenExpiresAt, @JsonKey(name: "refresh_token") required this.refreshToken, @JsonKey(name: "refresh_token_expires_at") required this.refreshTokenExpiresAt});
  factory _RefreshTokenResponseDto.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseDtoFromJson(json);

@override@JsonKey(name: "access_token") final  String accessToken;
@override@JsonKey(name: "access_token_expires_at") final  DateTime accessTokenExpiresAt;
@override@JsonKey(name: "refresh_token") final  String refreshToken;
@override@JsonKey(name: "refresh_token_expires_at") final  DateTime refreshTokenExpiresAt;

/// Create a copy of RefreshTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenResponseDtoCopyWith<_RefreshTokenResponseDto> get copyWith => __$RefreshTokenResponseDtoCopyWithImpl<_RefreshTokenResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshTokenResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenResponseDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accessTokenExpiresAt,refreshToken,refreshTokenExpiresAt);

@override
String toString() {
  return 'RefreshTokenResponseDto(accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenResponseDtoCopyWith<$Res> implements $RefreshTokenResponseDtoCopyWith<$Res> {
  factory _$RefreshTokenResponseDtoCopyWith(_RefreshTokenResponseDto value, $Res Function(_RefreshTokenResponseDto) _then) = __$RefreshTokenResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "access_token_expires_at") DateTime accessTokenExpiresAt,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_token_expires_at") DateTime refreshTokenExpiresAt
});




}
/// @nodoc
class __$RefreshTokenResponseDtoCopyWithImpl<$Res>
    implements _$RefreshTokenResponseDtoCopyWith<$Res> {
  __$RefreshTokenResponseDtoCopyWithImpl(this._self, this._then);

  final _RefreshTokenResponseDto _self;
  final $Res Function(_RefreshTokenResponseDto) _then;

/// Create a copy of RefreshTokenResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accessTokenExpiresAt = null,Object? refreshToken = null,Object? refreshTokenExpiresAt = null,}) {
  return _then(_RefreshTokenResponseDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
