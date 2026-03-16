import 'package:flutter/material.dart';

import 'app_color.dart';

import 'app_typography.dart';

import 'custom/theme_widget_data_light.dart';
import 'custom/theme_widget_data_datk.dart';

abstract final class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      surface: AppColor.lightBg,
      surfaceContainerLowest: AppColor.lightBgLight,
      surfaceContainerHighest: AppColor.lightBgDark,

      onSurface: AppColor.lightText,
      onSurfaceVariant: AppColor.lightTextMuted,

      primary: AppColor.lightPrimary,
      onPrimary: Colors.white,
      primaryContainer: AppColor.lightBgDark,
      onPrimaryContainer: AppColor.lightText,

      secondary: AppColor.lightSecondary,
      onSecondary: Colors.white,
      secondaryContainer: AppColor.lightBgDark,
      onSecondaryContainer: AppColor.lightText,

      error: AppColor.lightDanger,
      onError: Colors.white,

      outline: AppColor.lightBorder,
      outlineVariant: AppColor.lightBorderMuted,

      scrim: Colors.black54,
      shadow: Colors.black26,

      tertiary: AppColor.lightInfo,
      onTertiary: Colors.white,
      tertiaryContainer: AppColor.lightBgDark,
      onTertiaryContainer: AppColor.lightText,
      inverseSurface: AppColor.darkBg,
      onInverseSurface: AppColor.darkText,
      inversePrimary: AppColor.darkPrimary,
      surfaceTint: AppColor.lightPrimary,
      errorContainer: AppColor.lightDanger,
      onErrorContainer: Colors.white,
    ),

    scaffoldBackgroundColor: AppColor.lightBg,

    textTheme: AppTypography.textTheme.apply(
      bodyColor: AppColor.lightText,
      displayColor: AppColor.lightText,
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.lightPrimary,
      selectionColor: Color(0x33006B4F),
      selectionHandleColor: AppColor.lightPrimary,
    ),

    appBarTheme: appBarThemeLight,
    cardTheme: cardThemeLight,
    elevatedButtonTheme: elevatedButtonThemeLight,
    filledButtonTheme: filledButtonThemeLight,
    outlinedButtonTheme: outlinedButtonThemeLight,
    textButtonTheme: textButtonThemeLight,
    inputDecorationTheme: inputDecorationThemeLight,
    dividerTheme: dividerThemeLight,
    chipTheme: chipThemeLight,
    bottomNavigationBarTheme: bottomNavigationBarThemeLight,
    navigationBarTheme: navigationBarThemeLight,
    snackBarTheme: snackBarThemeLight,
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: const ColorScheme(
      brightness: Brightness.dark,

      surface: AppColor.darkBg,
      surfaceContainerLowest: AppColor.darkBgLight,
      surfaceContainerHighest: AppColor.darkBgDark,

      onSurface: AppColor.darkText,
      onSurfaceVariant: AppColor.darkTextMuted,

      primary: AppColor.darkPrimary,
      onPrimary: AppColor.darkBgDark,
      primaryContainer: AppColor.darkBgLight,
      onPrimaryContainer: AppColor.darkText,

      secondary: AppColor.darkSecondary,
      onSecondary: AppColor.darkBgDark,
      secondaryContainer: AppColor.darkBgLight,
      onSecondaryContainer: AppColor.darkText,

      error: AppColor.darkDanger,
      onError: AppColor.darkBgDark,

      outline: AppColor.darkBorder,
      outlineVariant: AppColor.darkBorderMuted,

      scrim: Colors.black87,
      shadow: Colors.black54,

      tertiary: AppColor.darkInfo,
      onTertiary: AppColor.darkBgDark,
      tertiaryContainer: AppColor.darkBgLight,
      onTertiaryContainer: AppColor.darkText,
      inverseSurface: AppColor.lightBg,
      onInverseSurface: AppColor.lightText,
      inversePrimary: AppColor.lightPrimary,
      surfaceTint: AppColor.darkPrimary,
      errorContainer: AppColor.darkDanger,
      onErrorContainer: AppColor.darkBgDark,
    ),

    scaffoldBackgroundColor: AppColor.darkBg,

    textTheme: AppTypography.textTheme.apply(
      bodyColor: AppColor.darkText,
      displayColor: AppColor.darkText,
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.darkPrimary,
      selectionColor: Color(0x332DDBA8),
      selectionHandleColor: AppColor.darkPrimary,
    ),

    appBarTheme: appBarThemeDark,
    cardTheme: cardThemeDark,
    elevatedButtonTheme: elevatedButtonThemeDark,
    filledButtonTheme: filledButtonThemeDark,
    outlinedButtonTheme: outlinedButtonThemeDark,
    textButtonTheme: textButtonThemeDark,
    inputDecorationTheme: inputDecorationThemeDark,
    dividerTheme: dividerThemeDark,
    chipTheme: chipThemeDark,
    bottomNavigationBarTheme: bottomNavigationBarThemeDark,
    navigationBarTheme: navigationBarThemeDark,
    snackBarTheme: snackBarThemeDark,
  );
}
