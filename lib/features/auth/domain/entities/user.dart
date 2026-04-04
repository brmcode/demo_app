import 'package:demo_app/features/auth/domain/entities/role.dart';

final class User {
  const User({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.roles,
    required this.imageUrl,
    required this.createdAt,
    required this.passwordChangedAt,
  });

  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final List<Role> roles;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime passwordChangedAt;

  String get fullName => '$firstName $lastName'.trim();
  String get displayName => fullName.isNotEmpty ? fullName : username;
  bool hasRole(String code) => roles.any((r) => r.code == code);
  bool get isAdmin => hasRole('ADMIN');
}
