import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/result_api.dart';
import 'package:news_app/data/api_manger.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';
import 'package:news_app/views_model/news_cubit.dart';
import 'package:news_app/views_model/news_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NewsCubit cubit = NewsCubit();
  // List<Article> articles = [];
  // bool isLoading = true;
  // String? error;

  @override
  void initState() {
    super.initState();
    // NewsCubit().getArticles();

    // getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: BlocBuilder<NewsCubit, NewsState>(
        bloc: NewsCubit()..getArticles(),
        builder: (context, State) {
          if (State is Newsloading) {
            return _loadingView();
          }
          if (State is NewsSuccess) {
            return _successVeiw(State.articles);
          }
          if (State is NewsError) {
            return _errorView(State.errorMassage);
          }
          return _loadingView();
        },
      ),
    );
  }

  Widget _successVeiw(List<Article> articles) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemCardNew(articles: articles[index]),
      itemCount: articles.length,
    );
  }

  Widget _loadingView() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _errorView(String error) {
    return Center(
      child: Text(
        error ?? "Something went wrong",
        style: TextStyle(fontSize: 30, color: Colors.red),
      ),
    );
  }

  // getArticles() async {
  //   var result = await ApiManger.getNews();

  //   switch (result) {
  //     case Success<NewsModel>():
  //       articles = result.data.articles ?? [];
  //     // setState(() {});

  //     case Error<NewsModel>():
  //       error = result.error;
  //       break;
  //   }
  //   isLoading = false;
  //   setState(() {});
  // }
}

const String imagetest =
    'https://tse2.mm.bing.net/th/id/OIP.tpJZJU1o7hXQgVtF1RONAwHaLH?r=0&pid=Api&h=220&P=0';
