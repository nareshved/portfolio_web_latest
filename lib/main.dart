import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/app_themes/app_theme.dart';
import 'repository/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      home: const SplashPage(),
    );
  }
}
