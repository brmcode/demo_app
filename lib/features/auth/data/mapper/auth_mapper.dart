import 'package:demo_app/features/auth/data/dto/response/sign_in_response_dto.dart';
import 'package:demo_app/features/auth/domain/entity/role.dart';
import 'package:demo_app/features/auth/domain/entity/user.dart';

abstract class AuthMapper {
  static Role fromRoleDto(RoleDto dto) {
    return Role(
      code: dto.code,
      name: dto.name,
      description: dto.description,
      createdAt: dto.createdAt,
    );
  }

  static User fromUserDto(SignInResponseDto dto) {
    return User(
      username: dto.user.username,
      firstName: dto.user.firstName,
      lastName: dto.user.lastName,
      email: dto.user.email,
      roles: dto.user.roles.map((role) => fromRoleDto(role)).toList(),
      imageUrl: dto.user.imageUrl,
      sessionId: dto.sessionId,
      accessToken: dto.accessToken,
      accessTokenExpiresAt: dto.accessTokenExpiresAt,
      refreshToken: dto.refreshToken,
      refreshTokenExpiresAt: dto.refreshTokenExpiresAt,
    );
  }
}
