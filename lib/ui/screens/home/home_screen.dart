import 'package:flutter/material.dart';
import 'package:news_app/data/api/api_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ApiManager.getSources();
    return Scaffold();
  }
}
