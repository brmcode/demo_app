import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title;
  const HeaderText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Text(
        title,
        style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500, color: colorScheme.onSurfaceVariant),
      ),
    );
  }
}
