// lib/features/auth/application/validator/auth_validator.dart
// =============================================================
// APPLICATION / VALIDATOR
// บทบาท: Validation rules สำหรับ auth forms
//
// ใช้สองทาง:
//   1. Flutter Form validator= callback → real-time ขณะพิมพ์
//   2. SignInUseCase เรียกก่อน call repository → ป้องกัน invalid API call
// =============================================================

import 'package:demo_app/common/validator/validation_result.dart';

abstract class AuthValidator {
  // -------------------------------------------------------
  // Email
  // -------------------------------------------------------
  static ValidationResult validateEmail(String? value) {
    final v = value?.trim() ?? '';
    final emailRegex = RegExp(r'^[\w.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$');

    if (v.isEmpty) return const ValidationResult.error('Email is required');
    if (!emailRegex.hasMatch(v)) {
      return const ValidationResult.error('Email is invalid');
    }
    return const ValidationResult.valid();
  }

  // -------------------------------------------------------
  // Password
  // -------------------------------------------------------
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

  // -------------------------------------------------------
  // Full form — ใช้ใน UseCase ก่อน call repository
  // return Map<field, errorMessage> — ถ้าว่างแปลว่า valid ทั้งหมด
  // -------------------------------------------------------
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

  // -------------------------------------------------------
  // Flutter Form-compatible validators (String? → String?)
  // ใช้ใน TextFormField validator= โดยตรง
  // -------------------------------------------------------
  static String? emailValidator(String? value) => AuthValidator.validateEmail(value).message;

  static String? passwordValidator(String? value) => AuthValidator.validatePassword(value).message;
}
