import 'package:demo_app/features/auth/domain/entity/role.dart';

class SignInResponse {
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final List<Role> roles;
  final String imageUrl;
  final String sessionId;
  final String accessToken;
  final DateTime accessTokenExpiresAt;
  final String refreshToken;
  final DateTime refreshTokenExpiresAt;

  const SignInResponse({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.roles,
    required this.imageUrl,
    required this.sessionId,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
  });

  String get fullName => '$firstName $lastName'.trim();
  String get displayName => fullName.isNotEmpty ? fullName : username;

  bool hasRole(String roleCode) => roles.any((role) => role.code == roleCode);
  bool get isAdmin => hasRole('ADMIN');
  bool get isAccessTokenExpired => DateTime.now().isAfter(accessTokenExpiresAt);
  String get primaryRole => roles.isNotEmpty ? roles.first.code : 'USER';
}
