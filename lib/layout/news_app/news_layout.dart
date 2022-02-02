// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_theme_mansour/layout/news_app/cubit/cubit.dart';
import 'package:app_theme_mansour/layout/news_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        builder: (context, state){
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'News App',
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(

              items: cubit.bottomItems
            ),
          );
        },
        listener: (context, state){},
      ),
    );
  }
}
