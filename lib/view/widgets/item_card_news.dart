import 'package:flutter/material.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/widgets/image_news.dart';

class ItemCardNew extends StatelessWidget {
  const ItemCardNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ImageNews(image: imagetest, height: 200),
          Text('Europe', style: Theme.of(context).textTheme.titleMedium),
          const Text('Russian warship: Moskva sinks in Black Sea'),
        ],
      ),
    );
  }
}
