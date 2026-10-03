import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routes/routes.dart';
import 'package:news_app/core/utils/bloc_observer.dart';
import 'package:news_app/data/api_manger.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/screens/details_screen%20.dart';
import 'package:news_app/view/screens/home_screen.dart';

void main() async {
  var newsModel = await ApiManger.getNews();
  Bloc.observer = MyBlocObserver();
  // log(newsModel.status ?? "");
  // log(newsModel.articles!.first.title ?? "");

  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});
  // final Article article;

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<Article> articles = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      // initialRoute: AppRoutes.details,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.details: (context) => DetailsScreen(),
      },
    );
  }
}
