// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'News App',
        ),
      ),
    );
  }
}
