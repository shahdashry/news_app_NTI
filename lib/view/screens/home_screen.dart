import 'package:flutter/material.dart';
import 'package:news_app/core/api/result_api.dart';
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
  bool isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: isLoading
          ? _loadingView()
          : error != null
          ? errorView()
          : _successVeiw(),
    );
  }

  Widget _successVeiw() {
    return ListView.builder(
      itemBuilder: (context, index) => ItemCardNew(articles: articles[index]),
      itemCount: articles.length,
    );
  }

  Widget _loadingView() {
    return Center(child: CircularProgressIndicator());
  }

  Widget errorView() {
    return Center(
      child: Text(
        error ?? "Something went wrong",
        style: TextStyle(fontSize: 30, color: Colors.red),
      ),
    );
  }

  getArticles() async {
    var result = await ApiManger.getNews();

    switch (result) {
      case Success<NewsModel>():
        articles = result.data.articles ?? [];
      // setState(() {});

      case Error<NewsModel>():
        error = result.error;
        break;
    }
    isLoading = false;
    setState(() {});
  }
}

const String imagetest =
    'https://tse2.mm.bing.net/th/id/OIP.tpJZJU1o7hXQgVtF1RONAwHaLH?r=0&pid=Api&h=220&P=0';
