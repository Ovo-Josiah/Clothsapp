import 'package:clothesapp/authentication/forget/forget_password.dart';
import 'package:clothesapp/authentication/sign_in/sign_in_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SignInPage()),
    // GoRoute(path: '/login', builder: (context, state) => const SignInPage()),
    GoRoute(
      path: '/forgot',
      builder: (context, state) => const ForgetPassword(),
    ),
  ],
);
