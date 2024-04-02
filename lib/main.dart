import 'package:flutter/material.dart';
import 'package:progress_bar_indicator/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Bar Indicator',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

