import 'package:demo_app/features/auth/domain/entity/role.dart';

class User {
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final List<Role> roles;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime passwordChangedAt;

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
}
