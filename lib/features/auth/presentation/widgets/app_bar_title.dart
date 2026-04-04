import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  const AppBarTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 24,
        letterSpacing: 5,
      ),
    );
  }
}
