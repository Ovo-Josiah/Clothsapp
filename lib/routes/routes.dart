import 'package:clothesapp/authentication/forget/forget_password.dart';
import 'package:clothesapp/authentication/sign_in/sign_in_page.dart';
import 'package:clothesapp/features/Pages/bag/bag.dart';
import 'package:clothesapp/features/Pages/home/home_screen.dart';
import 'package:clothesapp/features/main/main.dart';
import 'package:clothesapp/splashscreen/splash_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const SignInPage()),
    GoRoute(path: '/main', builder: (context, state) => const Main()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/bag', builder: (context, state) => const BagPage()),
    GoRoute(
      path: '/forgot',
      builder: (context, state) => const ForgetPassword(),
    ),
  ],
);
