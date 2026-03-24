// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInResult<T> {

 bool get success;@JsonKey(name: 'status_code') int get statusCode; String get message;@JsonKey(name: 'new_user') bool? get newUser;@JsonKey(name: 'data') T? get data; List<String>? get errors;
/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInResultCopyWith<T, SignInResult<T>> get copyWith => _$SignInResultCopyWithImpl<T, SignInResult<T>>(this as SignInResult<T>, _$identity);

  /// Serializes this SignInResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInResult<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.newUser, newUser) || other.newUser == newUser)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,newUser,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SignInResult<$T>(success: $success, statusCode: $statusCode, message: $message, newUser: $newUser, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SignInResultCopyWith<T,$Res>  {
  factory $SignInResultCopyWith(SignInResult<T> value, $Res Function(SignInResult<T>) _then) = _$SignInResultCopyWithImpl;
@useResult
$Res call({
 bool success,@JsonKey(name: 'status_code') int statusCode, String message,@JsonKey(name: 'new_user') bool? newUser,@JsonKey(name: 'data') T? data, List<String>? errors
});




}
/// @nodoc
class _$SignInResultCopyWithImpl<T,$Res>
    implements $SignInResultCopyWith<T, $Res> {
  _$SignInResultCopyWithImpl(this._self, this._then);

  final SignInResult<T> _self;
  final $Res Function(SignInResult<T>) _then;

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? statusCode = null,Object? message = null,Object? newUser = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,newUser: freezed == newUser ? _self.newUser : newUser // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInResult].
extension SignInResultPatterns<T> on SignInResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInResult<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInResult<T> value)  $default,){
final _that = this;
switch (_that) {
case _SignInResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInResult<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message, @JsonKey(name: 'new_user')  bool? newUser, @JsonKey(name: 'data')  T? data,  List<String>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.newUser,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message, @JsonKey(name: 'new_user')  bool? newUser, @JsonKey(name: 'data')  T? data,  List<String>? errors)  $default,) {final _that = this;
switch (_that) {
case _SignInResult():
return $default(_that.success,_that.statusCode,_that.message,_that.newUser,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success, @JsonKey(name: 'status_code')  int statusCode,  String message, @JsonKey(name: 'new_user')  bool? newUser, @JsonKey(name: 'data')  T? data,  List<String>? errors)?  $default,) {final _that = this;
switch (_that) {
case _SignInResult() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.newUser,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _SignInResult<T> implements SignInResult<T> {
  const _SignInResult({required this.success, @JsonKey(name: 'status_code') required this.statusCode, required this.message, @JsonKey(name: 'new_user') this.newUser, @JsonKey(name: 'data') this.data, final  List<String>? errors}): _errors = errors;
  factory _SignInResult.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$SignInResultFromJson(json,fromJsonT);

@override final  bool success;
@override@JsonKey(name: 'status_code') final  int statusCode;
@override final  String message;
@override@JsonKey(name: 'new_user') final  bool? newUser;
@override@JsonKey(name: 'data') final  T? data;
 final  List<String>? _errors;
@override List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInResultCopyWith<T, _SignInResult<T>> get copyWith => __$SignInResultCopyWithImpl<T, _SignInResult<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$SignInResultToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInResult<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.newUser, newUser) || other.newUser == newUser)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,newUser,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SignInResult<$T>(success: $success, statusCode: $statusCode, message: $message, newUser: $newUser, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SignInResultCopyWith<T,$Res> implements $SignInResultCopyWith<T, $Res> {
  factory _$SignInResultCopyWith(_SignInResult<T> value, $Res Function(_SignInResult<T>) _then) = __$SignInResultCopyWithImpl;
@override @useResult
$Res call({
 bool success,@JsonKey(name: 'status_code') int statusCode, String message,@JsonKey(name: 'new_user') bool? newUser,@JsonKey(name: 'data') T? data, List<String>? errors
});




}
/// @nodoc
class __$SignInResultCopyWithImpl<T,$Res>
    implements _$SignInResultCopyWith<T, $Res> {
  __$SignInResultCopyWithImpl(this._self, this._then);

  final _SignInResult<T> _self;
  final $Res Function(_SignInResult<T>) _then;

/// Create a copy of SignInResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? statusCode = null,Object? message = null,Object? newUser = freezed,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_SignInResult<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,newUser: freezed == newUser ? _self.newUser : newUser // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$SignInResponseDto {

@JsonKey(name: "session_id") String get sessionId;@JsonKey(name: "access_token") String get accessToken;@JsonKey(name: "access_token_expires_at") DateTime get accessTokenExpiresAt;@JsonKey(name: "refresh_token") String get refreshToken;@JsonKey(name: "refresh_token_expires_at") DateTime get refreshTokenExpiresAt; UserDto get user;
/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInResponseDtoCopyWith<SignInResponseDto> get copyWith => _$SignInResponseDtoCopyWithImpl<SignInResponseDto>(this as SignInResponseDto, _$identity);

  /// Serializes this SignInResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInResponseDto&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,accessToken,accessTokenExpiresAt,refreshToken,refreshTokenExpiresAt,user);

@override
String toString() {
  return 'SignInResponseDto(sessionId: $sessionId, accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt, user: $user)';
}


}

/// @nodoc
abstract mixin class $SignInResponseDtoCopyWith<$Res>  {
  factory $SignInResponseDtoCopyWith(SignInResponseDto value, $Res Function(SignInResponseDto) _then) = _$SignInResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "session_id") String sessionId,@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "access_token_expires_at") DateTime accessTokenExpiresAt,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_token_expires_at") DateTime refreshTokenExpiresAt, UserDto user
});


$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$SignInResponseDtoCopyWithImpl<$Res>
    implements $SignInResponseDtoCopyWith<$Res> {
  _$SignInResponseDtoCopyWithImpl(this._self, this._then);

  final SignInResponseDto _self;
  final $Res Function(SignInResponseDto) _then;

/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? accessToken = null,Object? accessTokenExpiresAt = null,Object? refreshToken = null,Object? refreshTokenExpiresAt = null,Object? user = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInResponseDto].
extension SignInResponseDtoPatterns on SignInResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SignInResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignInResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "session_id")  String sessionId, @JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt,  UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInResponseDto() when $default != null:
return $default(_that.sessionId,_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "session_id")  String sessionId, @JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt,  UserDto user)  $default,) {final _that = this;
switch (_that) {
case _SignInResponseDto():
return $default(_that.sessionId,_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "session_id")  String sessionId, @JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "access_token_expires_at")  DateTime accessTokenExpiresAt, @JsonKey(name: "refresh_token")  String refreshToken, @JsonKey(name: "refresh_token_expires_at")  DateTime refreshTokenExpiresAt,  UserDto user)?  $default,) {final _that = this;
switch (_that) {
case _SignInResponseDto() when $default != null:
return $default(_that.sessionId,_that.accessToken,_that.accessTokenExpiresAt,_that.refreshToken,_that.refreshTokenExpiresAt,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInResponseDto implements SignInResponseDto {
  const _SignInResponseDto({@JsonKey(name: "session_id") required this.sessionId, @JsonKey(name: "access_token") required this.accessToken, @JsonKey(name: "access_token_expires_at") required this.accessTokenExpiresAt, @JsonKey(name: "refresh_token") required this.refreshToken, @JsonKey(name: "refresh_token_expires_at") required this.refreshTokenExpiresAt, required this.user});
  factory _SignInResponseDto.fromJson(Map<String, dynamic> json) => _$SignInResponseDtoFromJson(json);

@override@JsonKey(name: "session_id") final  String sessionId;
@override@JsonKey(name: "access_token") final  String accessToken;
@override@JsonKey(name: "access_token_expires_at") final  DateTime accessTokenExpiresAt;
@override@JsonKey(name: "refresh_token") final  String refreshToken;
@override@JsonKey(name: "refresh_token_expires_at") final  DateTime refreshTokenExpiresAt;
@override final  UserDto user;

/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInResponseDtoCopyWith<_SignInResponseDto> get copyWith => __$SignInResponseDtoCopyWithImpl<_SignInResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInResponseDto&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,accessToken,accessTokenExpiresAt,refreshToken,refreshTokenExpiresAt,user);

@override
String toString() {
  return 'SignInResponseDto(sessionId: $sessionId, accessToken: $accessToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshToken: $refreshToken, refreshTokenExpiresAt: $refreshTokenExpiresAt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignInResponseDtoCopyWith<$Res> implements $SignInResponseDtoCopyWith<$Res> {
  factory _$SignInResponseDtoCopyWith(_SignInResponseDto value, $Res Function(_SignInResponseDto) _then) = __$SignInResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "session_id") String sessionId,@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "access_token_expires_at") DateTime accessTokenExpiresAt,@JsonKey(name: "refresh_token") String refreshToken,@JsonKey(name: "refresh_token_expires_at") DateTime refreshTokenExpiresAt, UserDto user
});


@override $UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$SignInResponseDtoCopyWithImpl<$Res>
    implements _$SignInResponseDtoCopyWith<$Res> {
  __$SignInResponseDtoCopyWithImpl(this._self, this._then);

  final _SignInResponseDto _self;
  final $Res Function(_SignInResponseDto) _then;

/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? accessToken = null,Object? accessTokenExpiresAt = null,Object? refreshToken = null,Object? refreshTokenExpiresAt = null,Object? user = null,}) {
  return _then(_SignInResponseDto(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of SignInResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserDto {

 String get username;@JsonKey(name: "first_name") String get firstName;@JsonKey(name: "last_name") String get lastName; String get email;@JsonKey(name: "image_url") String get imageUrl; List<RoleDto> get roles;@JsonKey(name: "password_changed_at") DateTime get passwordChangedAt;@JsonKey(name: "created_at") DateTime get createdAt;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.roles, roles)&&(identical(other.passwordChangedAt, passwordChangedAt) || other.passwordChangedAt == passwordChangedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,firstName,lastName,email,imageUrl,const DeepCollectionEquality().hash(roles),passwordChangedAt,createdAt);

@override
String toString() {
  return 'UserDto(username: $username, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, roles: $roles, passwordChangedAt: $passwordChangedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String username,@JsonKey(name: "first_name") String firstName,@JsonKey(name: "last_name") String lastName, String email,@JsonKey(name: "image_url") String imageUrl, List<RoleDto> roles,@JsonKey(name: "password_changed_at") DateTime passwordChangedAt,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? imageUrl = null,Object? roles = null,Object? passwordChangedAt = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,passwordChangedAt: null == passwordChangedAt ? _self.passwordChangedAt : passwordChangedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName,  String email, @JsonKey(name: "image_url")  String imageUrl,  List<RoleDto> roles, @JsonKey(name: "password_changed_at")  DateTime passwordChangedAt, @JsonKey(name: "created_at")  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.roles,_that.passwordChangedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName,  String email, @JsonKey(name: "image_url")  String imageUrl,  List<RoleDto> roles, @JsonKey(name: "password_changed_at")  DateTime passwordChangedAt, @JsonKey(name: "created_at")  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.roles,_that.passwordChangedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName,  String email, @JsonKey(name: "image_url")  String imageUrl,  List<RoleDto> roles, @JsonKey(name: "password_changed_at")  DateTime passwordChangedAt, @JsonKey(name: "created_at")  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.imageUrl,_that.roles,_that.passwordChangedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({required this.username, @JsonKey(name: "first_name") required this.firstName, @JsonKey(name: "last_name") required this.lastName, required this.email, @JsonKey(name: "image_url") required this.imageUrl, required final  List<RoleDto> roles, @JsonKey(name: "password_changed_at") required this.passwordChangedAt, @JsonKey(name: "created_at") required this.createdAt}): _roles = roles;
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String username;
@override@JsonKey(name: "first_name") final  String firstName;
@override@JsonKey(name: "last_name") final  String lastName;
@override final  String email;
@override@JsonKey(name: "image_url") final  String imageUrl;
 final  List<RoleDto> _roles;
@override List<RoleDto> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

@override@JsonKey(name: "password_changed_at") final  DateTime passwordChangedAt;
@override@JsonKey(name: "created_at") final  DateTime createdAt;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._roles, _roles)&&(identical(other.passwordChangedAt, passwordChangedAt) || other.passwordChangedAt == passwordChangedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,firstName,lastName,email,imageUrl,const DeepCollectionEquality().hash(_roles),passwordChangedAt,createdAt);

@override
String toString() {
  return 'UserDto(username: $username, firstName: $firstName, lastName: $lastName, email: $email, imageUrl: $imageUrl, roles: $roles, passwordChangedAt: $passwordChangedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String username,@JsonKey(name: "first_name") String firstName,@JsonKey(name: "last_name") String lastName, String email,@JsonKey(name: "image_url") String imageUrl, List<RoleDto> roles,@JsonKey(name: "password_changed_at") DateTime passwordChangedAt,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? imageUrl = null,Object? roles = null,Object? passwordChangedAt = null,Object? createdAt = null,}) {
  return _then(_UserDto(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,passwordChangedAt: null == passwordChangedAt ? _self.passwordChangedAt : passwordChangedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$RoleDto {

 String get code; String get name; String get description;@JsonKey(name: "created_at") DateTime get createdAt;
/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleDtoCopyWith<RoleDto> get copyWith => _$RoleDtoCopyWithImpl<RoleDto>(this as RoleDto, _$identity);

  /// Serializes this RoleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleDto&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,description,createdAt);

@override
String toString() {
  return 'RoleDto(code: $code, name: $name, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RoleDtoCopyWith<$Res>  {
  factory $RoleDtoCopyWith(RoleDto value, $Res Function(RoleDto) _then) = _$RoleDtoCopyWithImpl;
@useResult
$Res call({
 String code, String name, String description,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class _$RoleDtoCopyWithImpl<$Res>
    implements $RoleDtoCopyWith<$Res> {
  _$RoleDtoCopyWithImpl(this._self, this._then);

  final RoleDto _self;
  final $Res Function(RoleDto) _then;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleDto].
extension RoleDtoPatterns on RoleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleDto value)  $default,){
final _that = this;
switch (_that) {
case _RoleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleDto value)?  $default,){
final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String description, @JsonKey(name: "created_at")  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
return $default(_that.code,_that.name,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String description, @JsonKey(name: "created_at")  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _RoleDto():
return $default(_that.code,_that.name,_that.description,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String description, @JsonKey(name: "created_at")  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
return $default(_that.code,_that.name,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleDto implements RoleDto {
  const _RoleDto({required this.code, required this.name, required this.description, @JsonKey(name: "created_at") required this.createdAt});
  factory _RoleDto.fromJson(Map<String, dynamic> json) => _$RoleDtoFromJson(json);

@override final  String code;
@override final  String name;
@override final  String description;
@override@JsonKey(name: "created_at") final  DateTime createdAt;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleDtoCopyWith<_RoleDto> get copyWith => __$RoleDtoCopyWithImpl<_RoleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleDto&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,description,createdAt);

@override
String toString() {
  return 'RoleDto(code: $code, name: $name, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RoleDtoCopyWith<$Res> implements $RoleDtoCopyWith<$Res> {
  factory _$RoleDtoCopyWith(_RoleDto value, $Res Function(_RoleDto) _then) = __$RoleDtoCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String description,@JsonKey(name: "created_at") DateTime createdAt
});




}
/// @nodoc
class __$RoleDtoCopyWithImpl<$Res>
    implements _$RoleDtoCopyWith<$Res> {
  __$RoleDtoCopyWithImpl(this._self, this._then);

  final _RoleDto _self;
  final $Res Function(_RoleDto) _then;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? description = null,Object? createdAt = null,}) {
  return _then(_RoleDto(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
