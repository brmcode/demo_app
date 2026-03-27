import 'package:demo_app/core/theme/app_color.dart';
import 'package:demo_app/core/theme/app_radius.dart';
import 'package:flutter/material.dart';

class EditImageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EditImageButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.lgAll,
        ),
        side: BorderSide(
          color: theme.brightness == Brightness.light ? AppColor.lightBorder : AppColor.darkBorder,
          width: 1.5,
        ),
        fixedSize: Size(size.width * 0.5, 60),
      ),
      onPressed: onPressed,
      child: Text(
        'แก้ไขรูปภาพ',
        style: textTheme.bodyLarge?.copyWith(
          color: theme.brightness == Brightness.light ? AppColor.lightText : AppColor.darkText,
        ),
      ),
    );
  }
}
