import 'package:flutter/material.dart';
import 'package:news_app/data/api_manger.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [];
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemCardNew(articles: articles[index]),
        itemCount: articles.length,
      ),
    );
  }

  getArticles() async {
    var newsModel = await ApiManger.getNews();
    articles = newsModel.articles ?? [];
    setState(() {});
  }
}

const String imagetest =
    'https://tse2.mm.bing.net/th/id/OIP.tpJZJU1o7hXQgVtF1RONAwHaLH?r=0&pid=Api&h=220&P=0';
