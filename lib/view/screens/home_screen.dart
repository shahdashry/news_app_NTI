import 'dart:convert';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: Column(children: [ItemCardNew()]),
    );
  }
}

class ItemCardNew extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 10,
        children: [
          ClipRRect(borderRadius: BorderRadiusGeometry.circular(8)),
          Image.network(
            imagetest,
            height: 200,
            width: double.infinity,
            fit: .cover,
          ),
          Text("Europe", style: Theme.of(context).textTheme.titleMedium),
          Text("Russian warship: Moskva sinks in Black Sea"),
        ],
      ),
    );
  }
}

String imagetest =
    'https://images.search.yahoo.com/search/images;_ylt=A2RSfmwoULlq1wIAcupXNyoA;_ylu=Y29sbwNldS13ZXN0LTEEcG9zAzEEdnRpZAMEc2VjA3BpdnM-?p=horses&fr2=piv-web&type=E210US91105G0&fr=mcafee&imgurl=https%3A%2F%2Fofhorse.com%2Fwp-content%2Fuploads%2F2025%2F10%2Fhorse-herd-hierarchy-and-social-order-featured.webp';
