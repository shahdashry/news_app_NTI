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
    'https://tse2.mm.bing.net/th/id/OIP.tpJZJU1o7hXQgVtF1RONAwHaLH?r=0&pid=Api&h=220&P=0';
