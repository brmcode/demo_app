import 'package:gap/gap.dart';

import 'package:flutter/material.dart';

abstract final class AppSpacing {
  AppSpacing._();

  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double x3l = 64;
  static const double x4l = 80;

  static const gap4 = Gap(4);
  static const gap8 = Gap(xs);
  static const gap16 = Gap(md);
  static const gap24 = Gap(lg);
  static const gap32 = Gap(xl);
  static const gap48 = Gap(xxl);
  static const gap64 = Gap(x3l);
  static const gap80 = Gap(x4l);

  // ── Padding helpers ───────────────────────────────────────────
  static const EdgeInsets pagePadding = EdgeInsets.symmetric(horizontal: md, vertical: lg);
  static const EdgeInsets cardPadding = EdgeInsets.all(md);
  static const EdgeInsets inputPadding = EdgeInsets.symmetric(horizontal: md, vertical: sm);
  static const EdgeInsets chipPadding = EdgeInsets.symmetric(horizontal: sm, vertical: xs);
}
