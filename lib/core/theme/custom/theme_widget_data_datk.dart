import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_color.dart';
import '../app_radius.dart';
import '../app_spacing.dart';
import '../app_typography.dart';

final appBarThemeDark = AppBarTheme(
  backgroundColor: AppColor.darkBg,
  foregroundColor: AppColor.darkText,
  elevation: 0,
  scrolledUnderElevation: 1,
  surfaceTintColor: Colors.transparent,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  titleTextStyle: AppTypography.textTheme.titleLarge?.copyWith(
    color: AppColor.darkText,
    fontWeight: FontWeight.w600,
  ),
);

final cardThemeDark = CardThemeData(
  color: AppColor.darkBgLight,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: AppRadius.lgAll,
    side: const BorderSide(color: AppColor.darkBorderMuted),
  ),
  margin: EdgeInsets.zero,
);

final elevatedButtonThemeDark = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.hovered)) return AppColor.darkSecondary;
      if (states.contains(WidgetState.pressed)) return AppColor.darkSecondary;
      if (states.contains(WidgetState.disabled)) return AppColor.darkBorderMuted;
      return AppColor.darkPrimary;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return AppColor.darkTextMuted;
      return AppColor.darkBgDark;
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

final filledButtonThemeDark = FilledButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.hovered)) return AppColor.darkTextMuted;
      if (states.contains(WidgetState.pressed)) return AppColor.darkTextMuted;
      if (states.contains(WidgetState.disabled)) return AppColor.darkBorderMuted;
      return AppColor.darkText;
    }),
    foregroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) return AppColor.darkTextMuted;
      return AppColor.darkBgDark;
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

final outlinedButtonThemeDark = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    foregroundColor: AppColor.darkPrimary,
    side: const BorderSide(color: AppColor.darkBorder, width: 2),
    padding: AppSpacing.inputPadding,
    shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
    textStyle: AppTypography.textTheme.labelLarge,
  ),
);

final textButtonThemeDark = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: AppColor.darkPrimary,
    textStyle: AppTypography.textTheme.labelLarge,
  ),
);

final inputDecorationThemeDark = InputDecorationTheme(
  filled: true,
  fillColor: AppColor.darkBgLight,
  floatingLabelBehavior: FloatingLabelBehavior.always,
  labelStyle: WidgetStateTextStyle.resolveWith((states) {
    final color = states.contains(WidgetState.error)
        ? AppColor.darkDanger
        : states.contains(WidgetState.focused)
        ? AppColor.darkPrimary
        : AppColor.darkTextMuted;
    return AppTypography.textTheme.bodyMedium!.copyWith(color: color);
  }),
  floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
    final color = states.contains(WidgetState.error)
        ? AppColor.darkDanger
        : states.contains(WidgetState.focused)
        ? AppColor.darkPrimary
        : AppColor.darkTextMuted;
    return AppTypography.textTheme.bodyMedium!.copyWith(color: color);
  }),
  hintStyle: AppTypography.textTheme.bodyMedium?.copyWith(
    color: AppColor.darkTextMuted,
  ),
  prefixIconColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.error)) return AppColor.darkDanger;
    if (states.contains(WidgetState.focused)) return AppColor.darkPrimary;
    return AppColor.darkTextMuted;
  }),
  suffixIconColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.error)) return AppColor.darkDanger;
    if (states.contains(WidgetState.focused)) return AppColor.darkTextMuted;
    return AppColor.darkTextMuted;
  }),
  contentPadding: AppSpacing.inputPadding,
  border: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.darkBorder, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.darkBorderMuted, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.darkPrimary, width: 2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.darkDanger, width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: AppRadius.lgAll,
    borderSide: const BorderSide(color: AppColor.darkDanger, width: 2),
  ),
  errorStyle: AppTypography.textTheme.bodySmall?.copyWith(
    color: AppColor.darkDanger,
  ),
);

final dividerThemeDark = const DividerThemeData(
  color: AppColor.darkBorderMuted,
  thickness: 1,
  space: 0,
);

final chipThemeDark = ChipThemeData(
  backgroundColor: AppColor.darkBgLight,
  selectedColor: AppColor.darkPrimary,
  labelStyle: AppTypography.textTheme.labelMedium?.copyWith(
    color: AppColor.darkText,
  ),
  side: const BorderSide(color: AppColor.darkBorderMuted),
  shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
  padding: AppSpacing.chipPadding,
);

final bottomNavigationBarThemeDark = const BottomNavigationBarThemeData(
  backgroundColor: AppColor.darkBgDark,
  selectedItemColor: AppColor.darkPrimary,
  unselectedItemColor: AppColor.darkTextMuted,
  elevation: 0,
);

final navigationBarThemeDark = NavigationBarThemeData(
  backgroundColor: AppColor.darkBgDark,
  indicatorColor: AppColor.darkPrimary.withValues(alpha: 0.20),
  iconTheme: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return const IconThemeData(color: AppColor.darkPrimary);
    }
    return const IconThemeData(color: AppColor.darkTextMuted);
  }),
);

final snackBarThemeDark = SnackBarThemeData(
  backgroundColor: AppColor.darkBgLight,
  contentTextStyle: AppTypography.textTheme.bodyMedium?.copyWith(
    color: AppColor.lightText,
  ),
  shape: RoundedRectangleBorder(borderRadius: AppRadius.lgAll),
  behavior: SnackBarBehavior.floating,
);
