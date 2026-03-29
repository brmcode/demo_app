// widgets/app_text_form_field.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demo_app/core/theme/app_spacing.dart';

class AppTextFormField extends ConsumerStatefulWidget {
  const AppTextFormField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.autofocus = false,
    this.initialValue,
    this.validator,
    this.autovalidateMode,
  });

  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool autofocus;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;

  @override
  ConsumerState<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends ConsumerState<AppTextFormField> {
  final _fieldKey = GlobalKey<FormFieldState<String>>();

  // ดึง error จาก Flutter Form state โดยตรง — ไม่ต้อง setState
  String? get _errorText => _fieldKey.currentState?.errorText;
  bool get _hasError => _errorText != null && _errorText!.isNotEmpty;

  void _rebuild() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // ── Label row ────────────────────────────────────────────────────────
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              children: [
                Text(
                  widget.label!,
                  style: textTheme.bodyMedium?.copyWith(
                    color: _hasError ? colors.error : colors.onSurface,
                  ),
                ),
                if (_hasError) ...[
                  AppSpacing.gap8,
                  Text(
                    _errorText!,
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      color: colors.error,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),

        // ── TextFormField ────────────────────────────────────────────────────
        TextFormField(
          key: _fieldKey,
          controller: widget.controller,
          initialValue: widget.initialValue,
          focusNode: widget.focusNode,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          obscureText: widget.obscureText,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          inputFormatters: widget.inputFormatters,
          autofocus: widget.autofocus,
          autovalidateMode: widget.autovalidateMode,
          onChanged: (v) {
            widget.onChanged?.call(v);
          },
          onFieldSubmitted: widget.onFieldSubmitted,
          validator: widget.validator != null
              ? (v) {
                  final result = widget.validator!(v);
                  _rebuild();
                  return result;
                }
              : null,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            hintText: widget.hint,
            errorText: _hasError ? _errorText : null,
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            errorStyle: const TextStyle(fontSize: 0, height: 0),
            helperStyle: const TextStyle(fontSize: 0, height: 0),
            isDense: true,
          ),
        ),
      ],
    );
  }
}
