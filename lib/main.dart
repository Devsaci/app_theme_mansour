// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'layout/news_app/news_layout.dart';
import 'shared/bloc_observer.dart';
import 'shared/network/remote/dio_helper.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      DioHelper.init();
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: HexColor('333739'),
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            letterSpacing: 10.0,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 40,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 50.0,
          backgroundColor: Colors.grey[200],
          selectedIconTheme: IconThemeData(
            size: 40.0,
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: HexColor('333739'),
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('333739'),
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: HexColor('333739'),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            letterSpacing: 10.0,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 40,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 50.0,
          backgroundColor: Colors.grey[200],
          selectedIconTheme: IconThemeData(
            size: 40.0,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: NewsLayout(),
    );
  }
}
