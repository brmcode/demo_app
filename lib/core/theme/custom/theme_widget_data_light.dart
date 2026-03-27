import 'package:demo_app/core/theme/app_color.dart';
import 'package:demo_app/core/theme/app_radius.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/core/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final appBarThemeLight = AppBarTheme(
  backgroundColor: AppColor.lightBg,
  foregroundColor: AppColor.lightText,
  elevation: 0,
  scrolledUnderElevation: 1,
  surfaceTintColor: Colors.transparent,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  titleTextStyle: AppTypography.textTheme.titleLarge?.copyWith(
    color: AppColor.lightText,
    fontWeight: FontWeight.w600,
  ),
);

final cardThemeLight = CardThemeData(
  color: AppColor.lightBgLight,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: AppRadius.lgAll,
    side: const BorderSide(color: AppColor.lightBorderMuted),
  ),
  margin: EdgeInsets.zero,
);

final elevatedButtonThemeLight = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.hovered)) return AppColor.lightSecondary;
      if (states.contains(WidgetState.pressed)) return AppColor.lightSecondary;
      if (states.contains(WidgetState.disabled)) return AppColor.lightBorderMuted;
      return AppColor.lightPrimary;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return AppColor.lightTextMuted;
      return Colors.white;
    }),
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    elevation: WidgetStateProperty.all(0),
    padding: WidgetStateProperty.all(AppSpacing.inputPadding),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
    ),
    textStyle: WidgetStateProperty.all(AppTypography.textTheme.labelLarge),
    animationDuration: const Duration(milliseconds: 200),
  ),
);

final filledButtonThemeLight = FilledButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.hovered)) return AppColor.lightTextMuted;
      if (states.contains(WidgetState.pressed)) return AppColor.lightTextMuted;
      if (states.contains(WidgetState.disabled)) return AppColor.lightBorderMuted;
      return AppColor.lightText;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return AppColor.lightTextMuted;
      return AppColor.lightBgDark;
    }),
    overlayColor: WidgetStateProperty.all(Colors.transparent),
    elevation: WidgetStateProperty.all(0),
    padding: WidgetStateProperty.all(AppSpacing.inputPadding),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
    ),
    textStyle: WidgetStateProperty.all(AppTypography.textTheme.labelLarge),
    animationDuration: const Duration(milliseconds: 200),
  ),
);

final outlinedButtonThemeLight = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColor.lightPrimary,
    side: const BorderSide(color: AppColor.lightBorder, width: 2),
    padding: AppSpacing.inputPadding,
    shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
    textStyle: AppTypography.textTheme.labelLarge,
  ),
);

final textButtonThemeLight = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: AppColor.lightPrimary,
    textStyle: AppTypography.textTheme.labelLarge,
  ),
);

final inputDecorationThemeLight = InputDecorationTheme(
  filled: true,
  fillColor: AppColor.lightBgDark,
  floatingLabelBehavior: FloatingLabelBehavior.always,
  labelStyle: WidgetStateTextStyle.resolveWith((states) {
    final color = states.contains(WidgetState.error)
        ? AppColor.lightDanger
        : states.contains(WidgetState.focused)
        ? AppColor.lightPrimary
        : AppColor.lightTextMuted;
    return AppTypography.textTheme.bodyMedium!.copyWith(color: color);
  }),
  floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
    final color = states.contains(WidgetState.error)
        ? AppColor.lightDanger
        : states.contains(WidgetState.focused)
        ? AppColor.lightPrimary
        : AppColor.lightTextMuted;
    return AppTypography.textTheme.bodyMedium!.copyWith(color: color);
  }),
  hintStyle: AppTypography.textTheme.bodyMedium?.copyWith(
    color: AppColor.lightTextMuted,
  ),
  prefixIconColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.error)) return AppColor.lightDanger;
    if (states.contains(WidgetState.focused)) return AppColor.lightPrimary;
    return AppColor.lightTextMuted;
  }),
  suffixIconColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.error)) return AppColor.lightDanger;
    if (states.contains(WidgetState.focused)) return AppColor.lightTextMuted;
    return AppColor.lightTextMuted;
  }),
  contentPadding: AppSpacing.inputPadding,
  border: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.lightBorder, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.lightBorderMuted, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.lightPrimary, width: 2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.lightDanger, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.lightDanger, width: 2),
  ),
  errorStyle: AppTypography.textTheme.bodySmall?.copyWith(
    color: AppColor.lightDanger,
  ),
);

final dividerThemeLight = const DividerThemeData(
  color: AppColor.lightBorderMuted,
  thickness: 1,
  space: 0,
);

final chipThemeLight = ChipThemeData(
  backgroundColor: AppColor.lightBgDark,
  selectedColor: AppColor.lightPrimary,
  labelStyle: AppTypography.textTheme.labelMedium,
  side: const BorderSide(color: AppColor.lightBorderMuted),
  shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
  padding: AppSpacing.chipPadding,
);

final bottomNavigationBarThemeLight = const BottomNavigationBarThemeData(
  backgroundColor: AppColor.lightBg,
  selectedItemColor: AppColor.lightPrimary,
  unselectedItemColor: AppColor.lightTextMuted,
  elevation: 0,
);

final navigationBarThemeLight = NavigationBarThemeData(
  backgroundColor: AppColor.lightBgLight,
  indicatorColor: AppColor.lightPrimary.withValues(alpha: 0.15),
  iconTheme: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return const IconThemeData(color: AppColor.lightPrimary);
    }
    return const IconThemeData(color: AppColor.lightTextMuted);
  }),
);

final snackBarThemeLight = SnackBarThemeData(
  backgroundColor: AppColor.lightText,
  contentTextStyle: AppTypography.textTheme.bodyMedium?.copyWith(
    color: AppColor.darkText,
  ),
  shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
  behavior: SnackBarBehavior.floating,
);
