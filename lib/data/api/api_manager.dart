import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_app/data/model/sources_response_d_ms.dart';

abstract class ApiManager {
  static const String baseURL = 'https://newsapi.org';
  static const String apiKey = 'a574f9e5360044faa033377c2bba0424';
  static getSources() async {
    Uri url = Uri.parse('$baseURL/v2/top-headlines/sources?apiKey=$apiKey');
    Response response = await get(url);
    Map json = jsonDecode(response.body);
    SourcesResponseDM sourcesResponse = SourcesResponseDM.fromJson(json);
    print(response.body);
  }

  static getArticles() {}
}
