import 'package:demo_app/features/auth/data/dto/response/sign_in_response_dto.dart';

import '../../domain/entity/user.dart';

abstract class AuthMapper {
  static User fromDto(SignInResponseDto dto) => User(
    username: dto.user.username,
    firstName: dto.user.firstName,
    lastName: dto.user.lastName,
    email: dto.user.email,
    role: dto.user.role,
    sessionId: dto.sessionId,
    accessToken: dto.accessToken,
    accessTokenExpiresAt: DateTime.parse(dto.accessTokenExpiresAt),
    refreshToken: dto.refreshToken,
    refreshTokenExpiresAt: DateTime.parse(dto.refreshTokenExpiresAt),
  );
}
