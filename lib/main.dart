import 'package:flutter/material.dart';
import 'package:portfolio_web_latest/domain/constants/app_themes/app_theme.dart';
import 'package:portfolio_web_latest/repository/pages/home_page_view/home_view.dart';
import 'package:provider/provider.dart';
import 'domain/constants/app_themes/dark_theme_provider/dark_theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DarkThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeAnimationStyle:
          AnimationStyle(duration: Durations.medium2, curve: Curves.easeInCirc),
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      themeMode: context.watch<DarkThemeProvider>().themeValue
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      home: const HomePageView(),
    );
  }
}
