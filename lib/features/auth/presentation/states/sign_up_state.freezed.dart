// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpInitial value)?  initial,TResult Function( SignUpLoading value)?  loading,TResult Function( SignUpSuccess value)?  success,TResult Function( SignUpError value)?  error,TResult Function( SignUpData value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpInitial() when initial != null:
return initial(_that);case SignUpLoading() when loading != null:
return loading(_that);case SignUpSuccess() when success != null:
return success(_that);case SignUpError() when error != null:
return error(_that);case SignUpData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpInitial value)  initial,required TResult Function( SignUpLoading value)  loading,required TResult Function( SignUpSuccess value)  success,required TResult Function( SignUpError value)  error,required TResult Function( SignUpData value)  data,}){
final _that = this;
switch (_that) {
case SignUpInitial():
return initial(_that);case SignUpLoading():
return loading(_that);case SignUpSuccess():
return success(_that);case SignUpError():
return error(_that);case SignUpData():
return data(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpInitial value)?  initial,TResult? Function( SignUpLoading value)?  loading,TResult? Function( SignUpSuccess value)?  success,TResult? Function( SignUpError value)?  error,TResult? Function( SignUpData value)?  data,}){
final _that = this;
switch (_that) {
case SignUpInitial() when initial != null:
return initial(_that);case SignUpLoading() when loading != null:
return loading(_that);case SignUpSuccess() when success != null:
return success(_that);case SignUpError() when error != null:
return error(_that);case SignUpData() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SignInResponse response)?  success,TResult Function( Failure failure)?  error,TResult Function( String firstName,  String lastName,  String email,  String password,  String? confirmPassword,  String? imagePath,  String? submitError,  bool isLoading)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignUpInitial() when initial != null:
return initial();case SignUpLoading() when loading != null:
return loading();case SignUpSuccess() when success != null:
return success(_that.response);case SignUpError() when error != null:
return error(_that.failure);case SignUpData() when data != null:
return data(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.imagePath,_that.submitError,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SignInResponse response)  success,required TResult Function( Failure failure)  error,required TResult Function( String firstName,  String lastName,  String email,  String password,  String? confirmPassword,  String? imagePath,  String? submitError,  bool isLoading)  data,}) {final _that = this;
switch (_that) {
case SignUpInitial():
return initial();case SignUpLoading():
return loading();case SignUpSuccess():
return success(_that.response);case SignUpError():
return error(_that.failure);case SignUpData():
return data(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.imagePath,_that.submitError,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SignInResponse response)?  success,TResult? Function( Failure failure)?  error,TResult? Function( String firstName,  String lastName,  String email,  String password,  String? confirmPassword,  String? imagePath,  String? submitError,  bool isLoading)?  data,}) {final _that = this;
switch (_that) {
case SignUpInitial() when initial != null:
return initial();case SignUpLoading() when loading != null:
return loading();case SignUpSuccess() when success != null:
return success(_that.response);case SignUpError() when error != null:
return error(_that.failure);case SignUpData() when data != null:
return data(_that.firstName,_that.lastName,_that.email,_that.password,_that.confirmPassword,_that.imagePath,_that.submitError,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class SignUpInitial implements SignUpState {
  const SignUpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class SignUpLoading implements SignUpState {
  const SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.loading()';
}


}




/// @nodoc


class SignUpSuccess implements SignUpState {
  const SignUpSuccess(this.response);
  

 final  SignInResponse response;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<SignUpSuccess> get copyWith => _$SignUpSuccessCopyWithImpl<SignUpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SignUpState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess value, $Res Function(SignUpSuccess) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 SignInResponse response
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<$Res>
    implements $SignUpSuccessCopyWith<$Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess _self;
  final $Res Function(SignUpSuccess) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(SignUpSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SignInResponse,
  ));
}


}

/// @nodoc


class SignUpError implements SignUpState {
  const SignUpError(this.failure);
  

 final  Failure failure;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpErrorCopyWith<SignUpError> get copyWith => _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignUpState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignUpErrorCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpErrorCopyWith(SignUpError value, $Res Function(SignUpError) _then) = _$SignUpErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(this._self, this._then);

  final SignUpError _self;
  final $Res Function(SignUpError) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignUpError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class SignUpData implements SignUpState {
  const SignUpData({required this.firstName, required this.lastName, required this.email, required this.password, this.confirmPassword, this.imagePath, this.submitError, this.isLoading = false});
  

 final  String firstName;
 final  String lastName;
 final  String email;
 final  String password;
 final  String? confirmPassword;
 final  String? imagePath;
 final  String? submitError;
@JsonKey() final  bool isLoading;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpDataCopyWith<SignUpData> get copyWith => _$SignUpDataCopyWithImpl<SignUpData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpData&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.submitError, submitError) || other.submitError == submitError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,email,password,confirmPassword,imagePath,submitError,isLoading);

@override
String toString() {
  return 'SignUpState.data(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, imagePath: $imagePath, submitError: $submitError, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $SignUpDataCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpDataCopyWith(SignUpData value, $Res Function(SignUpData) _then) = _$SignUpDataCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String email, String password, String? confirmPassword, String? imagePath, String? submitError, bool isLoading
});




}
/// @nodoc
class _$SignUpDataCopyWithImpl<$Res>
    implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._self, this._then);

  final SignUpData _self;
  final $Res Function(SignUpData) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? email = null,Object? password = null,Object? confirmPassword = freezed,Object? imagePath = freezed,Object? submitError = freezed,Object? isLoading = null,}) {
  return _then(SignUpData(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: freezed == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
