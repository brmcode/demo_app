import 'package:demo_app/core/router/app_route.dart';
import 'package:demo_app/core/theme/app_radius.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/application/state/google_sign_in_state.dart';
import 'package:demo_app/features/auth/presentation/provider/google_sign_in_provider.dart';
import 'package:demo_app/features/auth/presentation/widget/google_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key});

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeIn;
  late final Animation<Offset> _slideUp;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeIn = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slideUp = Tween<Offset>(
      begin: const Offset(0, 0.12),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final googleState = ref.watch(googleSignInProvider);

    ref.listen<GoogleSignInState>(googleSignInProvider, (_, next) {
      if (next is GoogleSignInAuthenticated) {
        context.goNamed(AppRoute.home.name);
      }
    });

    return Scaffold(
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeIn,
          child: SlideTransition(
            position: _slideUp,
            child: Padding(
              padding: AppSpacing.pagePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 2),

                  // ── Logo / Badge ─────────────────────────────────
                  Center(
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        color: colorScheme.primary.withValues(alpha: 0.12),
                        borderRadius: AppRadius.lgAll,
                        border: Border.all(
                          color: colorScheme.primary.withValues(alpha: 0.3),
                          width: 1.5,
                        ),
                      ),
                      child: Icon(
                        Icons.code_rounded,
                        size: 36,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),

                  AppSpacing.gap24,

                  // ── Title ────────────────────────────────────────
                  Center(
                    child: Text(
                      'DEMO',
                      style: textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        letterSpacing: 6,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),

                  AppSpacing.gap4,

                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: AppRadius.fullAll,
                      ),
                      child: Text(
                        'A Flutter Demo Application',
                        style: textTheme.labelSmall?.copyWith(
                          color: colorScheme.primary,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  AppSpacing.gap16,

                  // ── Subtitle ─────────────────────────────────────
                  Center(
                    child: Text(
                      'Build your next Flutter project with clean architecture and best practices.',
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.6,
                      ),
                    ),
                  ),

                  const Spacer(flex: 2),

                  // ── Register Button ───────────────────────────────
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => context.pushNamed(AppRoute.signUp.name),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sign Up'),
                          Gap(AppSpacing.sm),
                          Icon(Icons.arrow_forward_rounded, size: 18),
                        ],
                      ),
                    ),
                  ),

                  AppSpacing.gap16,

                  // ── Login Button ──────────────────────────────────
                  SizedBox(
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () => context.pushNamed(AppRoute.signIn.name),
                      child: const Text('Sign In'),
                    ),
                  ),

                  AppSpacing.gap32,

                  // ── Divider ───────────────────────────────────────
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'OR',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),

                  AppSpacing.gap16,

                  // ── Google Button ─────────────────────────────────
                  GoogleButton(
                    onPressed: (googleState is GoogleSignInLoading || googleState is GoogleSignInInitializing)
                        ? () {}
                        : () => ref.read(googleSignInProvider.notifier).signIn(),
                  ),

                  if (googleState is GoogleSignInError) ...[
                    AppSpacing.gap16,
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.error_outline, color: colorScheme.onErrorContainer, size: 18),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              googleState.message,
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onErrorContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  const Spacer(flex: 1),

                  // ── Footer ────────────────────────────────────────
                  Center(
                    child: Text(
                      'SETUP v1.0.0',
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                        letterSpacing: 1,
                      ),
                    ),
                  ),

                  AppSpacing.gap8,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
