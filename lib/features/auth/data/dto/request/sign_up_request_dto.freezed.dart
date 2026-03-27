// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequestDto {

@JsonKey(name: "email") String get email;@JsonKey(name: "first_name") String get firstName;@JsonKey(name: "last_name") String get lastName;@JsonKey(name: "image_url") String get imageUrl;@JsonKey(name: "password") String get password;
/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestDtoCopyWith<SignUpRequestDto> get copyWith => _$SignUpRequestDtoCopyWithImpl<SignUpRequestDto>(this as SignUpRequestDto, _$identity);

  /// Serializes this SignUpRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,firstName,lastName,imageUrl,password);

@override
String toString() {
  return 'SignUpRequestDto(email: $email, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestDtoCopyWith<$Res>  {
  factory $SignUpRequestDtoCopyWith(SignUpRequestDto value, $Res Function(SignUpRequestDto) _then) = _$SignUpRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "email") String email,@JsonKey(name: "first_name") String firstName,@JsonKey(name: "last_name") String lastName,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "password") String password
});




}
/// @nodoc
class _$SignUpRequestDtoCopyWithImpl<$Res>
    implements $SignUpRequestDtoCopyWith<$Res> {
  _$SignUpRequestDtoCopyWithImpl(this._self, this._then);

  final SignUpRequestDto _self;
  final $Res Function(SignUpRequestDto) _then;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? firstName = null,Object? lastName = null,Object? imageUrl = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpRequestDto].
extension SignUpRequestDtoPatterns on SignUpRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "email")  String email, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "password")  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
return $default(_that.email,_that.firstName,_that.lastName,_that.imageUrl,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "email")  String email, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "password")  String password)  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestDto():
return $default(_that.email,_that.firstName,_that.lastName,_that.imageUrl,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "email")  String email, @JsonKey(name: "first_name")  String firstName, @JsonKey(name: "last_name")  String lastName, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "password")  String password)?  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
return $default(_that.email,_that.firstName,_that.lastName,_that.imageUrl,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpRequestDto implements SignUpRequestDto {
  const _SignUpRequestDto({@JsonKey(name: "email") required this.email, @JsonKey(name: "first_name") required this.firstName, @JsonKey(name: "last_name") required this.lastName, @JsonKey(name: "image_url") required this.imageUrl, @JsonKey(name: "password") required this.password});
  factory _SignUpRequestDto.fromJson(Map<String, dynamic> json) => _$SignUpRequestDtoFromJson(json);

@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "first_name") final  String firstName;
@override@JsonKey(name: "last_name") final  String lastName;
@override@JsonKey(name: "image_url") final  String imageUrl;
@override@JsonKey(name: "password") final  String password;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestDtoCopyWith<_SignUpRequestDto> get copyWith => __$SignUpRequestDtoCopyWithImpl<_SignUpRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,firstName,lastName,imageUrl,password);

@override
String toString() {
  return 'SignUpRequestDto(email: $email, firstName: $firstName, lastName: $lastName, imageUrl: $imageUrl, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestDtoCopyWith<$Res> implements $SignUpRequestDtoCopyWith<$Res> {
  factory _$SignUpRequestDtoCopyWith(_SignUpRequestDto value, $Res Function(_SignUpRequestDto) _then) = __$SignUpRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "email") String email,@JsonKey(name: "first_name") String firstName,@JsonKey(name: "last_name") String lastName,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "password") String password
});




}
/// @nodoc
class __$SignUpRequestDtoCopyWithImpl<$Res>
    implements _$SignUpRequestDtoCopyWith<$Res> {
  __$SignUpRequestDtoCopyWithImpl(this._self, this._then);

  final _SignUpRequestDto _self;
  final $Res Function(_SignUpRequestDto) _then;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? firstName = null,Object? lastName = null,Object? imageUrl = null,Object? password = null,}) {
  return _then(_SignUpRequestDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
