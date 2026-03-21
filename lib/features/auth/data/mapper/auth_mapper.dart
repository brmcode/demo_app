import 'package:demo_app/features/auth/data/dto/response/sign_in_response_dto.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';

abstract class AuthMapper {
  static User fromDto(SignInResponseDto dto) => User(
    username: dto.user.username,
    firstName: dto.user.firstName,
    lastName: dto.user.lastName,
    email: dto.user.email,
    role: dto.user.role,
    imageUrl: dto.user.imageUrl,
    sessionId: dto.sessionId,
    accessToken: dto.accessToken,
    accessTokenExpiresAt: dto.accessTokenExpiresAt,
    refreshToken: dto.refreshToken,
    refreshTokenExpiresAt: dto.refreshTokenExpiresAt,
  );
}
