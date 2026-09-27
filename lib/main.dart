// import 'package:flutter/material.dart';
// import 'package:news_app/core/routes/routes.dart';
// import 'package:news_app/core/theme/app_theme.dart';
// import 'package:news_app/view/screens/home_screen.dart';

// class NewsApp extends StatelessWidget {
//   const NewsApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: AppTheme.lightheme,
//       themeMode: .light,
//       initialRoute: AppRoutes.home,
//       routes: {AppRoutes.home: (context) => const HomeScreen()},
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app/core/routes/routes.dart';
import 'package:news_app/view/screens/details_screen%20.dart';
import 'package:news_app/view/screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.home,
      initialRoute: AppRoutes.details,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.details: (context) => DetailsScreen(),
      },
    );
  }
}
