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
mixin _$UserDto {

 String get username;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String get email; String get role;@JsonKey(name: 'password_changed_at') String get passwordChangedAt;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.passwordChangedAt, passwordChangedAt) || other.passwordChangedAt == passwordChangedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,firstName,lastName,email,role,passwordChangedAt,createdAt);

@override
String toString() {
  return 'UserDto(username: $username, firstName: $firstName, lastName: $lastName, email: $email, role: $role, passwordChangedAt: $passwordChangedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String username,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email, String role,@JsonKey(name: 'password_changed_at') String passwordChangedAt,@JsonKey(name: 'created_at') String createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? role = null,Object? passwordChangedAt = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,passwordChangedAt: null == passwordChangedAt ? _self.passwordChangedAt : passwordChangedAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String role, @JsonKey(name: 'password_changed_at')  String passwordChangedAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.role,_that.passwordChangedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String role, @JsonKey(name: 'password_changed_at')  String passwordChangedAt, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.role,_that.passwordChangedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String email,  String role, @JsonKey(name: 'password_changed_at')  String passwordChangedAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.username,_that.firstName,_that.lastName,_that.email,_that.role,_that.passwordChangedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({required this.username, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, required this.email, required this.role, @JsonKey(name: 'password_changed_at') required this.passwordChangedAt, @JsonKey(name: 'created_at') required this.createdAt});
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String username;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String email;
@override final  String role;
@override@JsonKey(name: 'password_changed_at') final  String passwordChangedAt;
@override@JsonKey(name: 'created_at') final  String createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.passwordChangedAt, passwordChangedAt) || other.passwordChangedAt == passwordChangedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,firstName,lastName,email,role,passwordChangedAt,createdAt);

@override
String toString() {
  return 'UserDto(username: $username, firstName: $firstName, lastName: $lastName, email: $email, role: $role, passwordChangedAt: $passwordChangedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String username,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String email, String role,@JsonKey(name: 'password_changed_at') String passwordChangedAt,@JsonKey(name: 'created_at') String createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? role = null,Object? passwordChangedAt = null,Object? createdAt = null,}) {
  return _then(_UserDto(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,passwordChangedAt: null == passwordChangedAt ? _self.passwordChangedAt : passwordChangedAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SignInResponseDto {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'access_token_expires_at') String get accessTokenExpiresAt;@JsonKey(name: 'refresh_token') String get refreshToken;@JsonKey(name: 'refresh_token_expires_at') String get refreshTokenExpiresAt; UserDto get user;
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
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'access_token_expires_at') String accessTokenExpiresAt,@JsonKey(name: 'refresh_token') String refreshToken,@JsonKey(name: 'refresh_token_expires_at') String refreshTokenExpiresAt, UserDto user
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
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'access_token_expires_at')  String accessTokenExpiresAt, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'refresh_token_expires_at')  String refreshTokenExpiresAt,  UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'access_token_expires_at')  String accessTokenExpiresAt, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'refresh_token_expires_at')  String refreshTokenExpiresAt,  UserDto user)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'access_token_expires_at')  String accessTokenExpiresAt, @JsonKey(name: 'refresh_token')  String refreshToken, @JsonKey(name: 'refresh_token_expires_at')  String refreshTokenExpiresAt,  UserDto user)?  $default,) {final _that = this;
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
  const _SignInResponseDto({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'access_token') required this.accessToken, @JsonKey(name: 'access_token_expires_at') required this.accessTokenExpiresAt, @JsonKey(name: 'refresh_token') required this.refreshToken, @JsonKey(name: 'refresh_token_expires_at') required this.refreshTokenExpiresAt, required this.user});
  factory _SignInResponseDto.fromJson(Map<String, dynamic> json) => _$SignInResponseDtoFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'access_token_expires_at') final  String accessTokenExpiresAt;
@override@JsonKey(name: 'refresh_token') final  String refreshToken;
@override@JsonKey(name: 'refresh_token_expires_at') final  String refreshTokenExpiresAt;
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
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'access_token_expires_at') String accessTokenExpiresAt,@JsonKey(name: 'refresh_token') String refreshToken,@JsonKey(name: 'refresh_token_expires_at') String refreshTokenExpiresAt, UserDto user
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
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
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

// dart format on
