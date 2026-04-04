import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request_dto.freezed.dart';
part 'sign_in_request_dto.g.dart';

@freezed
abstract class SignInRequestDto with _$SignInRequestDto {
  const factory SignInRequestDto({
    required String email,
    required String password,
    @Default('USER') String role,
  }) = _SignInRequestDto;

  factory SignInRequestDto.fromJson(Map<String, dynamic> json) => _$SignInRequestDtoFromJson(json);
}
