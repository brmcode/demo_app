import 'package:demo_app/core/domain/validators/validation_result.dart';

abstract final class SignUpValidator {
  static ValidationResult firstName(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('First name is required');
    return const ValidationResult.valid();
  }

  static ValidationResult lastName(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('Last name is required');
    return const ValidationResult.valid();
  }

  static ValidationResult email(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('Email is required');
    final re = RegExp(r'^[\w.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');
    if (!re.hasMatch(v)) {
      return const ValidationResult.error('Email is invalid');
    }
    return const ValidationResult.valid();
  }

  static ValidationResult password(String? value) {
    final v = value ?? '';
    if (v.isEmpty) return const ValidationResult.error('Password is required');
    if (v.length < 6) {
      return const ValidationResult.error(
        'Password must be at least 6 characters',
      );
    }
    return const ValidationResult.valid();
  }

  static ValidationResult confirmPassword(String? pw, String? confirm) {
    if (pw != confirm) {
      return const ValidationResult.error('Passwords do not match');
    }
    return const ValidationResult.valid();
  }

  /// FormFieldValidator adapters.
  static String? firstNameField(String? v) => firstName(v).message;
  static String? lastNameField(String? v) => lastName(v).message;
  static String? emailField(String? v) => email(v).message;
  static String? passwordField(String? v) => password(v).message;
  static String? confirmPasswordField(String? pw, String? confirm) => confirmPassword(pw, confirm).message;
}
