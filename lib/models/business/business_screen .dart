// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        color: Colors.orangeAccent,
        child: Center(
          child: Text(
            "BusinessScreen ",
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
