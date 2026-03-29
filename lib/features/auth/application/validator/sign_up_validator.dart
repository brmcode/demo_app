import 'package:demo_app/core/domain/validator/validation_result.dart';

abstract class SignUpValidator {
  static ValidationResult validateFirstName(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('First Name is required');
    return const ValidationResult.valid();
  }

  static ValidationResult validateLastName(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return const ValidationResult.error('Last Name is required');
    return const ValidationResult.valid();
  }

  static ValidationResult validateEmail(String? value) {
    final v = value?.trim() ?? '';
    final emailRegex = RegExp(r'^[\w.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');
    if (v.isEmpty) return const ValidationResult.error('Email is required');
    if (!emailRegex.hasMatch(v)) return const ValidationResult.error('Email is invalid');
    return const ValidationResult.valid();
  }

  static ValidationResult validatePassword(String? value) {
    final v = value ?? '';
    if (v.isEmpty) return const ValidationResult.error('Password is required');
    if (v.length < 6) return const ValidationResult.error('Password must be at least 6 characters');
    return const ValidationResult.valid();
  }

  static ValidationResult validateConfirmPassword(String? password, String? confirmPassword) {
    if (password != confirmPassword) return const ValidationResult.error('Passwords do not match');
    return const ValidationResult.valid();
  }

  static Map<String, String> validateSignUpForm({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
  }) {
    final errors = <String, String>{};

    final firstNameResult = validateFirstName(firstName);
    if (!firstNameResult.isValid) errors['firstName'] = firstNameResult.message!;

    final lastNameResult = validateLastName(lastName);
    if (!lastNameResult.isValid) errors['lastName'] = lastNameResult.message!;

    final emailResult = validateEmail(email);
    if (!emailResult.isValid) errors['email'] = emailResult.message!;

    final passwordResult = validatePassword(password);
    if (!passwordResult.isValid) errors['password'] = passwordResult.message!;

    final confirmPasswordResult = validateConfirmPassword(password, confirmPassword);
    if (!confirmPasswordResult.isValid) errors['confirmPassword'] = confirmPasswordResult.message!;

    return errors;
  }

  static String? firstNameValidator(String? value) => SignUpValidator.validateFirstName(value).message;
  static String? lastNameValidator(String? value) => SignUpValidator.validateLastName(value).message;
  static String? emailValidator(String? value) => SignUpValidator.validateEmail(value).message;
  static String? passwordValidator(String? value) => SignUpValidator.validatePassword(value).message;
  static String? confirmPasswordValidator(String? value, String? password) => SignUpValidator.validateConfirmPassword(password, value).message;
}
