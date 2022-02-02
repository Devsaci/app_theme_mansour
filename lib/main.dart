// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'business/business_screen .dart';
import 'layout/news_app/news_layout.dart';
import 'science/science_screen .dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Theme Manasour ',
      home: ScienceScreen(),
    );
  }
}
