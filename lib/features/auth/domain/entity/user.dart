class User {
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String role;
  final String sessionId;
  final String accessToken;
  final DateTime accessTokenExpiresAt;
  final String refreshToken;
  final DateTime refreshTokenExpiresAt;

  const User({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    required this.sessionId,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
  });

  // Domain computed properties
  String get fullName => '$firstName $lastName'.trim();
  String get displayName => fullName.isNotEmpty ? fullName : username;
  bool get isAdmin => role == 'ADMIN';
  bool get isAccessTokenExpired => DateTime.now().isAfter(accessTokenExpiresAt);
}
