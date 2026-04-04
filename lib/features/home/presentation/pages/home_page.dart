import 'package:demo_app/core/common/helper.dart';
import 'package:demo_app/core/presentation/router/app_route.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/domain/entities/user.dart';
import 'package:demo_app/features/auth/presentation/providers/sign_in_provider.dart';

import 'package:demo_app/features/auth/presentation/states/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(signInProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          if (authState is SignInSuccess)
            IconButton(
              onPressed: () async {
                context.goNamed(AppRoute.auth.name);
                await ref.read(signInProvider.notifier).signOut();
              },
              icon: const Icon(Icons.logout_rounded),
            ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          child: authState is SignInSuccess
              ? _ProfileView(user: authState.response.user)
              : _NotSignedInView(
                  onSignIn: () => context.goNamed(AppRoute.auth.name),
                ),
        ),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 42,
          backgroundColor: theme.colorScheme.primary.withValues(alpha: 0.15),
          backgroundImage: user.imageUrl.isNotEmpty ? NetworkImage(user.imageUrl) : null,
          child: user.imageUrl.isEmpty
              ? Text(
                  getInitials(user.displayName),
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),
        AppSpacing.gap24,
        Text(
          user.displayName,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        AppSpacing.gap8,
        Text(
          user.email,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        AppSpacing.gap16,
        Wrap(
          spacing: 8,
          runSpacing: 4,
          alignment: WrapAlignment.center,
          children: user.roles.map((role) {
            final isAdmin = role.code == 'ADMIN';
            return Chip(
              label: Text(
                role.code,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: isAdmin ? theme.colorScheme.onErrorContainer : theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
              backgroundColor: isAdmin ? theme.colorScheme.errorContainer : theme.colorScheme.primaryContainer,
              side: BorderSide.none,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              visualDensity: VisualDensity.compact,
            );
          }).toList(),
        ),
        AppSpacing.gap24,
        FilledButton(
          onPressed: () => context.goNamed(AppRoute.auth.name),
          child: const Text('Manage account'),
        ),
      ],
    );
  }
}

class _NotSignedInView extends StatelessWidget {
  const _NotSignedInView({required this.onSignIn});
  final VoidCallback onSignIn;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.lock_outline_rounded, size: 64, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(height: 16),
        Text(
          'You are not signed in',
          style: theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Tap below to sign in.',
          style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        FilledButton(
          onPressed: onSignIn,
          child: const Text('Go to Sign In'),
        ),
      ],
    );
  }
}
