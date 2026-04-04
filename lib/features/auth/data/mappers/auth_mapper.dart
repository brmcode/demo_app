import 'package:demo_app/features/auth/data/dtos/response/sign_in_response_dto.dart';
import 'package:demo_app/features/auth/domain/entities/role.dart';
import 'package:demo_app/features/auth/domain/entities/sign_in_response.dart';
import 'package:demo_app/features/auth/domain/entities/user.dart';

/// Converts data-layer DTOs → domain entities. No business logic here.
abstract final class AuthMapper {
  static Role fromRoleDto(RoleDto dto) => Role(
    code: dto.code,
    name: dto.name,
    description: dto.description,
    createdAt: dto.createdAt,
  );

  static SignInResponse fromSignInResponseDto(SignInResponseDto dto) => SignInResponse(
    user: fromUserDto(dto.user),
    sessionId: dto.sessionId,
    accessToken: dto.accessToken,
    accessTokenExpiresAt: dto.accessTokenExpiresAt,
    refreshToken: dto.refreshToken,
    refreshTokenExpiresAt: dto.refreshTokenExpiresAt,
  );

  static User fromUserDto(UserDto dto) => User(
    username: dto.username,
    firstName: dto.firstName,
    lastName: dto.lastName,
    email: dto.email,
    roles: dto.roles.map(fromRoleDto).toList(),
    imageUrl: dto.imageUrl,
    passwordChangedAt: dto.passwordChangedAt,
    createdAt: dto.createdAt,
  );
}
