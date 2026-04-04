final class Role {
  const Role({
    required this.code,
    required this.name,
    required this.description,
    required this.createdAt,
  });

  final String code;
  final String name;
  final String description;
  final DateTime createdAt;
}
