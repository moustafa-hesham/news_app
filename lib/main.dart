import 'package:flutter/material.dart';

import 'package:news_app/ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // getSources();
    return MaterialApp(
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}

// void getSources() async {
//   Uri url = Uri.https('newsapi.org', 'v2/top-headlines/sources',
//       {"apiKey": "a574f9e5360044faa033377c2bba0424"});
//   http.Response response = await http.get(url);

//   if (response.statusCode >= 200 && response.statusCode < 300) {
//     Map json = jsonDecode(response.body) as Map;
//     print(json['sources']);
//   } else {
//     print('response is ${response.body}');
//   }
// }

void getArticle() {}
