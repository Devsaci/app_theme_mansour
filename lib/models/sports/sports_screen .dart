// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        color: Colors.tealAccent,
        child: Center(
          child: Text(
           " SportsScreen ",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
