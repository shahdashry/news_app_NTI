import 'package:flutter/material.dart';
import 'package:news_app/core/routes/routes.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'package:news_app/view/screens/home_screen.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightheme,
      themeMode: .light,
      initialRoute: AppRoutes.home,
      routes: {AppRoutes.home: (context) => const HomeScreen()},
    );
  }
}
