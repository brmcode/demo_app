import 'package:flutter/material.dart';

/// Typography scale — import Google Fonts or use system font.
/// Add `google_fonts` to pubspec.yaml if you want custom font.
abstract final class AppTypography {
  AppTypography._();

  // If using Google Fonts:
  // static String get _font => GoogleFonts.inter().fontFamily!;
  static const String _font = 'NotoSansThai'; // replace with your font

  static TextTheme get textTheme => const TextTheme(
    // Display
    displayLarge: TextStyle(fontFamily: _font, fontSize: 57, fontWeight: FontWeight.w400, letterSpacing: -0.25, height: 1.12),
    displayMedium: TextStyle(fontFamily: _font, fontSize: 45, fontWeight: FontWeight.w400, letterSpacing: 0, height: 1.16),
    displaySmall: TextStyle(fontFamily: _font, fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0, height: 1.22),

    // Headline
    headlineLarge: TextStyle(fontFamily: _font, fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: 0, height: 1.25),
    headlineMedium: TextStyle(fontFamily: _font, fontSize: 28, fontWeight: FontWeight.w600, letterSpacing: 0, height: 1.29),
    headlineSmall: TextStyle(fontFamily: _font, fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 0, height: 1.33),

    // Title
    titleLarge: TextStyle(fontFamily: _font, fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0, height: 1.27),
    titleMedium: TextStyle(fontFamily: _font, fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50),
    titleSmall: TextStyle(fontFamily: _font, fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.10, height: 1.43),

    // Label
    labelLarge: TextStyle(fontFamily: _font, fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.10, height: 1.43),
    labelMedium: TextStyle(fontFamily: _font, fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 0.50, height: 1.33),
    labelSmall: TextStyle(fontFamily: _font, fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.50, height: 1.45),

    // Body
    bodyLarge: TextStyle(fontFamily: _font, fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.50, height: 1.50),
    bodyMedium: TextStyle(fontFamily: _font, fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43),
    bodySmall: TextStyle(fontFamily: _font, fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.40, height: 1.33),
  );
}
