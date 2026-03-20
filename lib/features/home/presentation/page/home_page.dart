import 'package:demo_app/core/router/app_route.dart';
import 'package:demo_app/core/theme/app_spacing.dart';
import 'package:demo_app/features/auth/application/state/google_sign_in_state.dart';
import 'package:demo_app/features/auth/presentation/provider/google_sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final googleState = ref.watch(googleSignInProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          if (googleState is GoogleSignInAuthenticated) ...[
            IconButton(
              onPressed: () async {
                context.goNamed(AppRoute.auth.name);
                await ref.read(googleSignInProvider.notifier).signOut();
              },
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          child: googleState is GoogleSignInAuthenticated
              ? _ProfileView(user: googleState.user)
              : _NotSignedInView(onSignIn: () => context.goNamed(AppRoute.auth.name)),
        ),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({required this.user});

  final GoogleSignInAccount user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 42,
          backgroundColor: theme.colorScheme.primary.withValues(alpha: 0.15),
          backgroundImage: user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
          child: user.photoUrl == null
              ? Text(
                  (user.displayName ?? user.email)[0].toUpperCase(),
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),

        AppSpacing.gap24,
        Text(
          user.displayName ?? user.email,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        AppSpacing.gap8,
        Text(
          user.email,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        Text(
          'ID: ${user.id}',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ),
        AppSpacing.gap24,
        FilledButton(
          onPressed: () {
            context.goNamed(AppRoute.auth.name);
          },
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
          'Tap below to sign in with Google.',
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
