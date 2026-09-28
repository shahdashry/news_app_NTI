import 'package:flutter/material.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/widgets/image_news.dart';
import 'package:news_app/data/news_model.dart';

class ItemCardNew extends StatelessWidget {
  const ItemCardNew({super.key, required this.articles});

  // final Articles articles;
  final Article articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ImageNews(image: articles.urlToImage ?? imagetest),

          Text(
            articles.author ?? "",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(articles.title ?? ""),
        ],
      ),
    );
  }
}
