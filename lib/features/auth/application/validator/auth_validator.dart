import 'package:demo_app/core/domain/validator/validation_result.dart';

abstract class AuthValidator {
  static ValidationResult validateEmail(String? value) {
    final v = value?.trim() ?? '';
    final emailRegex = RegExp(r'^[\w.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');

    if (v.isEmpty) return const ValidationResult.error('Email is required');
    if (!emailRegex.hasMatch(v)) {
      return const ValidationResult.error('Email is invalid');
    }
    return const ValidationResult.valid();
  }

  static ValidationResult validatePassword(String? value) {
    final v = value ?? '';

    if (v.trim().isEmpty) {
      return const ValidationResult.error('Password is required');
    }
    if (v.length < 6) {
      return const ValidationResult.error('Password must be at least 6 characters');
    }
    return const ValidationResult.valid();
  }

  static Map<String, String> validateSignInForm({
    required String email,
    required String password,
  }) {
    final errors = <String, String>{};

    final emailResult = validateEmail(email);
    if (!emailResult.isValid) errors['email'] = emailResult.message!;

    final passwordResult = validatePassword(password);
    if (!passwordResult.isValid) errors['password'] = passwordResult.message!;

    return errors;
  }

  static String? emailValidator(String? value) => AuthValidator.validateEmail(value).message;

  static String? passwordValidator(String? value) => AuthValidator.validatePassword(value).message;
}
