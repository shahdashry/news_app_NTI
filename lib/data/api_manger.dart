import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_app/data/news_model.dart';

class ApiManger {
  static Future<NewsModel> getNews() async {
    // https://newsapi.org/v2/everything?q=bitcoin&apiKey=123e551dbe454a029d399cf9387bce8a
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "q": "bitcoin",
      "apiKey": "123e551dbe454a029d399cf9387bce8a",
    });
    var response = await http.get(url);
    var responseString = response.body;
    var json = jsonDecode(responseString);
    log("Status :${json["status"]}");
    log("Auther : ${json["articles"][0]["auther"]}");
    return NewsModel.fromJson(json);
    // log("Author : ${json["articles"][0]["author"]}");
  }
}
