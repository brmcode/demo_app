sealed class ValidationResult {
  const ValidationResult();
  const factory ValidationResult.valid() = _Valid;
  const factory ValidationResult.error(String message) = _Invalid;

  bool get isValid => this is _Valid;
  String? get message => switch (this) {
    _Invalid(:final message) => message,
    _ => null,
  };
}

final class _Valid extends ValidationResult {
  const _Valid();
}

final class _Invalid extends ValidationResult {
  @override
  final String message;
  const _Invalid(this.message);
}
