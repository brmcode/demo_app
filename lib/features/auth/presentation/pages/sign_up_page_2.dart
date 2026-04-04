import 'package:demo_app/core/presentation/router/app_route.dart';
import 'package:demo_app/core/presentation/widgets/app_text_form_field.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/presentation/providers/sign_up_provider.dart';
import 'package:demo_app/features/auth/presentation/validators/sign_up_validator.dart';
import 'package:demo_app/features/auth/presentation/widgets/app_bar_title.dart';
import 'package:demo_app/features/auth/presentation/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignUpPage2 extends ConsumerStatefulWidget {
  const SignUpPage2({super.key});

  @override
  ConsumerState<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends ConsumerState<SignUpPage2> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _confirmPasswordFocus = FocusNode();

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _confirmPasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: const AppBarTitle(title: 'DEMO')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const HeaderText(title: 'Create your account'),
                  AppSpacing.gap24,
                  AppTextFormField(
                    controller: _emailCtrl,
                    focusNode: _emailFocus,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: SignUpValidator.emailField,
                    label: 'Email',
                    hint: 'Enter your email address',
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_passwordFocus);
                    },
                  ),
                  AppSpacing.gap16,
                  AppTextFormField(
                    controller: _passwordCtrl,
                    focusNode: _passwordFocus,
                    obscureText: _obscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    validator: SignUpValidator.passwordField,
                    label: 'Password',
                    hint: 'Minimum 6 chars',
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_confirmPasswordFocus);
                    },
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                      onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                  AppSpacing.gap16,
                  AppTextFormField(
                    controller: _confirmPasswordCtrl,
                    focusNode: _confirmPasswordFocus,
                    obscureText: _obscureConfirmPassword,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    validator: (v) => SignUpValidator.confirmPasswordField(_passwordCtrl.text, v),
                    label: 'Confirm Password',
                    hint: 'Enter your password',
                    onFieldSubmitted: (_) => _handleNext(context),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureConfirmPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                      onPressed: () => setState(() => _obscureConfirmPassword = !_obscureConfirmPassword),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () => _handleNext(context),
              child: Text(
                'Next',
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleNext(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      ref
          .read(signUpProvider.notifier)
          .updateStep2(
            email: _emailCtrl.text,
            password: _passwordCtrl.text,
            confirmPassword: _confirmPasswordCtrl.text,
          );
      context.pushNamed(AppRoute.signUp3.name);
    }
  }
}
