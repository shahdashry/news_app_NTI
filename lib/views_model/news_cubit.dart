// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/result_api.dart';
import 'package:news_app/data/api_manger.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/views_model/news_state.dart';

class NewsCubit<State> extends Cubit<NewsState> {
  /// {@macro cubit}
  NewsCubit() : super(Newsloading());

  getArticles() async {
    emit(Newsloading());
    final result = await ApiManger.getNews();
    switch (result) {
      case Success<NewsModel>():
        var articles = result.data.articles ?? [];
        // setState(() {});
        emit(NewsSuccess(articles));
      case Error<NewsModel>():
        var error = result.error;
        emit(NewsError(error));
        break;
    }
  }
}
