// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_theme_mansour/shared/components/components.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: null, // Error
      fallback: (BuildContext context) => Center(
        child: CircularProgressIndicator(),
      ),
      builder: (BuildContext context) {}, // Error
    );
  }
}
