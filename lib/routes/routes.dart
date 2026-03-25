// import 'package:clothesapp/authentication/forget/forget_password.dart';
// import 'package:clothesapp/authentication/sign_in/sign_in_page.dart';
import 'package:clothesapp/features/Pages/category/categories_page.dart';
import 'package:clothesapp/features/Pages/category/sub_cate/sub_cat_detail/category_detail_screen.dart';
import 'package:clothesapp/features/Pages/home/home_screen.dart';
import 'package:clothesapp/features/main/main.dart';
// import 'package:clothesapp/splashscreen/splash_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

// final router = GoRouter(
//   routes: [
//     GoRoute(path: '/', builder: (context, state) => SplashScreen()),
//     GoRoute(path: '/login', builder: (context, state) => const SignInPage()),
//     GoRoute(path: '/main', builder: (context, state) => const Main()),
//     GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
//     GoRoute(path: '/bag', builder: (context, state) => const CategoriesPage()),
//     GoRoute(
//       path: '/forgot',
//       builder: (context, state) => const ForgetPassword(),
//     ),
//   ],
// );

final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => HomeScreen()),
        GoRoute(
          path: '/categories',
          builder: (context, state) => CategoriesPage(),
          routes: [
            GoRoute(
              path: ':name',
              builder: (context, state) {
                final name = state.pathParameters['name']!;
                // final name = state.queryParameters['name']!;
                return CategoryDetailsScreen(categoryName: name);
              },
            ),
          ],
        ),
        // GoRoute(
        //   path: '/bag',
        //   builder: (context, state) => BagPage(),
        // ),
        // GoRoute(
        //   path: '/favourites',
        //   builder: (context, state) => FavouritesPage(),
        // ),
        // GoRoute(
        //   path: '/profile',
        //   builder: (context, state) => ProfilePage(),
        // ),
      ],
    ),
  ],
);
