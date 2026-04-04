import 'package:demo_app/features/auth/domain/entities/user.dart';

final class SignInResponse {
  const SignInResponse({
    required this.user,
    required this.sessionId,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
  });

  final User user;
  final String sessionId;
  final String accessToken;
  final DateTime accessTokenExpiresAt;
  final String refreshToken;
  final DateTime refreshTokenExpiresAt;
  bool get isAccessTokenExpired => DateTime.now().isAfter(accessTokenExpiresAt);
}
