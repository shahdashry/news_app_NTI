import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/item_card_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: Column(children: [ItemCardNew()]),
    );
  }
}

const String imagetest =
    'https://ofhorse.com/wp-content/uploads/2025/10/horse-herd-hierarchy-and-social-order-featured.webp';
