import 'package:demo_app/core/router/app_route.dart';
import 'package:demo_app/features/auth/presentation/page/auth_page.dart';
import 'package:demo_app/features/auth/presentation/page/sign_up_page_1.dart';
import 'package:demo_app/features/auth/presentation/page/sign_up_page_2.dart';
import 'package:demo_app/features/auth/presentation/page/sign_up_page_3.dart';
import 'package:demo_app/features/home/presentation/page/home_page.dart';
import 'package:demo_app/features/auth/presentation/page/sign_in_page.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoute.auth.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(title: 'Flutter Demo Home Page'),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(
              begin: const Offset(1, 0), // 👉 right → left
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOut));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: AppRoute.auth.path,
        name: AppRoute.auth.name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const AuthPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(
              begin: const Offset(1, 0), // 👉 right → left
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeOut));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
        routes: [
          GoRoute(
            path: AppRoute.signIn.path,
            name: AppRoute.signIn.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignInPage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(1, 0), // 👉 right → left
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOut));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          ),
          GoRoute(
            path: AppRoute.signUp1.path,
            name: AppRoute.signUp1.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage1(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(1, 0), // 👉 right → left
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOut));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          ),
          GoRoute(
            path: AppRoute.signUp2.path,
            name: AppRoute.signUp2.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage2(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(1, 0), // 👉 right → left
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOut));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          ),
          GoRoute(
            path: AppRoute.signUp3.path,
            name: AppRoute.signUp3.name,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage3(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(1, 0), // 👉 right → left
                  end: Offset.zero,
                ).chain(CurveTween(curve: Curves.easeOut));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.error.toString()}'),
      ),
    ),
  );
}
