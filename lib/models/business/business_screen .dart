// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 350.0,
          height: 700.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/08/15/09/daisies-712892__340.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Column(
          children: [

          ],
        ),
      ],
    );
  }
}
