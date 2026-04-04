import 'package:demo_app/core/domain/validators/validation_result.dart';

/// Stateless validator for the sign-in form.
abstract final class AuthValidator {
  static ValidationResult email(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('Email is required');
    final re = RegExp(r'^[\w.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');
    if (!re.hasMatch(v)) return const ValidationResult.error('Email is invalid');
    return const ValidationResult.valid();
  }

  static ValidationResult password(String? value) {
    final v = value ?? '';
    if (v.trim().isEmpty) {
      return const ValidationResult.error('Password is required');
    }
    if (v.length < 6) {
      return const ValidationResult.error(
        'Password must be at least 6 characters',
      );
    }
    return const ValidationResult.valid();
  }

  /// FormFieldValidator adapters.
  static String? emailField(String? v) => email(v).message;
  static String? passwordField(String? v) => password(v).message;
}
