import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sign_in_request_dto.freezed.dart';
part 'google_sign_in_request_dto.g.dart';

@freezed
abstract class GoogleSignInRequestDto with _$GoogleSignInRequestDto {
  const factory GoogleSignInRequestDto({
    @JsonKey(name: "id_token") required String idToken,
  }) = _GoogleSignInRequestDto;

  factory GoogleSignInRequestDto.fromJson(Map<String, dynamic> json) => _$GoogleSignInRequestDtoFromJson(json);
}
