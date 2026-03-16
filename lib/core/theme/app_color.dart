import 'package:flutter/material.dart';

/// All raw color tokens — no semantics here, just values.
abstract final class AppColor {
  AppColor._();

  // ── Background ────────────────────────────────────────────────
  // Light
  static const lightBgDark = Color(0xFFDBE8E3);
  static const lightBg = Color(0xFFE9F5F0);
  static const lightBgLight = Color(0xFFF6FFFE);

  // Dark
  static const darkBgDark = Color(0xFF010403);
  static const darkBg = Color(0xFF050D0A);
  static const darkBgLight = Color(0xFF0F1815);

  // ── Text ──────────────────────────────────────────────────────
  // Light
  static const lightText = Color(0xFF000F09);
  static const lightTextMuted = Color(0xFF384D45);

  // Dark
  static const darkText = Color(0xFFDFF9EF);
  static const darkTextMuted = Color(0xFF9FB8AE);

  // ── Border ───────────────────────────────────────────────────
  // Light
  static const lightHighlight = Color(0xFFECFFFC);
  static const lightBorder = Color(0xFF6F867D);
  static const lightBorderMuted = Color(0xFF8DA59B);

  // Dark
  static const darkHighlight = Color(0xFF536961);
  static const darkBorder = Color(0xFF384d45);
  static const darkBorderMuted = Color(0xFF1E332B);

  // ── Action ───────────────────────────────────────────────────
  // Light
  static const lightPrimary = Color(0xFF00583F);
  static const lightSecondary = Color(0xFF6E2E4F);

  // Dark
  static const darkPrimary = Color(0xFF69C6A7);
  static const darkSecondary = Color(0xFFE297BA);

  // ── Alert ────────────────────────────────────────────────────
  // Light
  static const lightDanger = Color(0xFF7D5952);
  static const lightWarning = Color(0xFF6A6443);
  static const lightSuccess = Color(0xFF4A6C59);
  static const lightInfo = Color(0xFF536480);

  // Dark
  static const darkDanger = Color(0xFFBC938C);
  static const darkWarning = Color(0xFFA5A07C);
  static const darkSuccess = Color(0xFF84A894);
  static const darkInfo = Color(0xFF8D9FBE);
}
