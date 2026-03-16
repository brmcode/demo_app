import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response_dto.freezed.dart';
part 'refresh_token_response_dto.g.dart';

@freezed
abstract class RefreshTokenResponseDto with _$RefreshTokenResponseDto {
  const factory RefreshTokenResponseDto({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "access_token_expires_at") required DateTime accessTokenExpiresAt,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "refresh_token_expires_at") required DateTime refreshTokenExpiresAt,
  }) = _RefreshTokenResponseDto;

  factory RefreshTokenResponseDto.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseDtoFromJson(json);
}
