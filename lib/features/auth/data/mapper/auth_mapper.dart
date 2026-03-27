import 'package:demo_app/features/auth/data/dto/response/sign_in_response_dto.dart';
import 'package:demo_app/features/auth/domain/entity/role.dart';
import 'package:demo_app/features/auth/domain/entity/sign_in_response.dart';
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

  static SignInResponse fromSignInResponseDto(SignInResponseDto dto) {
    return SignInResponse(
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

  static User fromUserDto(UserDto dto) {
    return User(
      username: dto.username,
      firstName: dto.firstName,
      lastName: dto.lastName,
      email: dto.email,
      roles: dto.roles.map((role) => fromRoleDto(role)).toList(),
      imageUrl: dto.imageUrl,
      passwordChangedAt: dto.passwordChangedAt,
      createdAt: dto.createdAt,
    );
  }
}
