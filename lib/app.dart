// import 'package:clothesapp/authentication/sign_in/sign_in_page.dart';
import 'package:clothesapp/routes/routes.dart';
import 'package:clothesapp/utils/themes/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Clothes App',
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
