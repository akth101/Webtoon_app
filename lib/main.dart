import 'package:flutter/material.dart';
import 'package:webtoon/screens/home_screen.dart';
// import 'package:webtoon/services/api_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
