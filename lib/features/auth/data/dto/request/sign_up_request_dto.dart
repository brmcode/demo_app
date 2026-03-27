import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_dto.freezed.dart';
part 'sign_up_request_dto.g.dart';

@freezed
abstract class SignUpRequestDto with _$SignUpRequestDto {
  const factory SignUpRequestDto({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "password") required String password,
  }) = _SignUpRequestDto;

  factory SignUpRequestDto.fromJson(Map<String, dynamic> json) => _$SignUpRequestDtoFromJson(json);
}
