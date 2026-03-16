import 'package:flutter/material.dart';

/// Border-radius tokens used across the app.
abstract final class AppRadius {
  AppRadius._();

  static const double none = 0;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double full = 999; // pill / circle

  // ── BorderRadius helpers ──────────────────────────────────────
  static BorderRadius get noneAll => BorderRadius.circular(none);
  static BorderRadius get xsAll => BorderRadius.circular(xs);
  static BorderRadius get smAll => BorderRadius.circular(sm);
  static BorderRadius get mdAll => BorderRadius.circular(md);
  static BorderRadius get lgAll => BorderRadius.circular(lg);
  static BorderRadius get xlAll => BorderRadius.circular(xl);
  static BorderRadius get xxlAll => BorderRadius.circular(xxl);
  static BorderRadius get fullAll => BorderRadius.circular(full);

  // ── Convenient named shapes ───────────────────────────────────
  /// Card / surface default
  static BorderRadius get card => lgAll;

  /// Input field
  static BorderRadius get input => smAll;

  /// Button
  static BorderRadius get button => fullAll;

  /// Bottom sheet / modal
  static BorderRadius get sheet => const BorderRadius.only(
    topLeft: Radius.circular(xxl),
    topRight: Radius.circular(xxl),
  );

  // ── BorderRadiusGeometry for widgets that need it ─────────────
  static BorderRadiusGeometry get cardGeometry => card;
  static BorderRadiusGeometry get inputGeometry => input;
  static BorderRadiusGeometry get buttonGeometry => button;
}
