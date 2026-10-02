import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/core/api/result_api.dart';
import 'package:news_app/data/news_model.dart';

class ApiManger {
  static Future<ResultApi<NewsModel>> getNews() async {
    try {
      // https://newsapi.org/v2/everything?q=bitcoin&apiKey=123e551dbe454a029d399cf9387bce8a
      Uri url = Uri.https("newsapi.org", "/v2/everything", {
        "q": "bitcoin",
        "apiKey": "123e551dbe454a029d399cf9387bce8a",
      });
      var response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseString = response.body;
        var json = jsonDecode(responseString);
        return Success(NewsModel.fromJson(json));
      } else {
        return Error(" from server");
      }
    } on SocketException {
      return Error("error from internet.try again..");
    } catch (e) {
      return Error("error $e");
    }
  }
}
