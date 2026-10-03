import 'package:news_app/data/news_model.dart';

abstract class NewsState {}

class Newsloading extends NewsState {}

class NewsSuccess extends NewsState {
  List<Article> articles;
  NewsSuccess(this.articles);
}

class NewsError extends NewsState {
  String errorMassage;
  NewsError(this.errorMassage);
}
