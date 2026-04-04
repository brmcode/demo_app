import 'dart:developer';

import 'package:demo_app/core/presentation/router/app_route.dart';
import 'package:demo_app/core/presentation/widgets/app_text_form_field.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/presentation/providers/sign_in_provider.dart';
import 'package:demo_app/features/auth/presentation/states/sign_in_state.dart';
import 'package:demo_app/features/auth/presentation/validators/auth_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final state = ref.watch(signInProvider);

    ref.listen(signInProvider, (_, next) {
      if (next is SignInSuccess) {
        context.goNamed(AppRoute.home.name);
      }
    });

    final isLoading = state is SignInLoading;
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AppSpacing.gap48,
                Text(
                  'Sign in to continue',
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                AppSpacing.gap48,
                AppTextFormField(
                  controller: _emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,

                  validator: AuthValidator.emailField,
                  label: 'Email',
                  hint: 'Enter your email address',
                  prefixIcon: const Icon(Icons.mail_outline_rounded),
                ),
                AppSpacing.gap16,
                AppTextFormField(
                  controller: _passwordCtrl,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  validator: AuthValidator.passwordField,
                  label: 'Password',
                  hint: 'Minimum 6 chars',
                  onFieldSubmitted: (_) => _onSubmit(),
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    ),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                ),
                AppSpacing.gap8,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => context.push('/forgot-password'),
                    child: Text(
                      'Forgot password?',
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                AppSpacing.gap16,
                if (state is SignInError) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.error_outline, color: colorScheme.onErrorContainer, size: 18),
                        AppSpacing.gap8,
                        Expanded(
                          child: Text(
                            state.failure.message,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.gap16,
                ],
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : _onSubmit,
                    child: isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : Text(
                            'Login',
                            style: textTheme.titleMedium?.copyWith(
                              color: colorScheme.onPrimary,
                            ),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Divider(color: colorScheme.onSurfaceVariant),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(AppRoute.signUp1.name),
                      child: Text(
                        'Sign Up',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    log('Submit form with email=${_emailCtrl.text} and password=${_passwordCtrl.text}');
    if (!_formKey.currentState!.validate()) return;

    ref
        .read(signInProvider.notifier)
        .signIn(
          email: _emailCtrl.text,
          password: _passwordCtrl.text,
        );
  }
}
