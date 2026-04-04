import 'package:demo_app/core/presentation/router/app_route.dart';
import 'package:demo_app/features/auth/presentation/pages/auth_page.dart';
import 'package:demo_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:demo_app/features/auth/presentation/pages/sign_up_page_1.dart';
import 'package:demo_app/features/auth/presentation/pages/sign_up_page_2.dart';
import 'package:demo_app/features/auth/presentation/pages/sign_up_page_3.dart';
import 'package:demo_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

Widget Function(BuildContext, Animation<double>, Animation<double>, Widget) _slideTransitionBuilder() {
  return (_, animation, _, child) => SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).chain(CurveTween(curve: Curves.easeOut)).animate(animation),
    child: child,
  );
}

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoute.auth.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        pageBuilder: (_, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(title: 'Demo'),
          transitionsBuilder: _slideTransitionBuilder(),
        ),
      ),
      GoRoute(
        path: AppRoute.auth.path,
        name: AppRoute.auth.name,
        pageBuilder: (_, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const AuthPage(),
          transitionsBuilder: _slideTransitionBuilder(),
        ),
        routes: [
          GoRoute(
            path: AppRoute.signIn.path,
            name: AppRoute.signIn.name,
            pageBuilder: (_, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignInPage(),
              transitionsBuilder: _slideTransitionBuilder(),
            ),
          ),
          GoRoute(
            path: AppRoute.signUp1.path,
            name: AppRoute.signUp1.name,
            pageBuilder: (_, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage1(),
              transitionsBuilder: _slideTransitionBuilder(),
            ),
          ),
          GoRoute(
            path: AppRoute.signUp2.path,
            name: AppRoute.signUp2.name,
            pageBuilder: (_, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage2(),
              transitionsBuilder: _slideTransitionBuilder(),
            ),
          ),
          GoRoute(
            path: AppRoute.signUp3.path,
            name: AppRoute.signUp3.name,
            pageBuilder: (_, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SignUpPage3(),
              transitionsBuilder: _slideTransitionBuilder(),
            ),
          ),
        ],
      ),
    ],
    errorBuilder: (_, state) => Scaffold(
      body: Center(child: Text('Page not found: ${state.error}')),
    ),
  );
}
