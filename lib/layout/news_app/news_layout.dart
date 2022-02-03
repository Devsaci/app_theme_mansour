// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_theme_mansour/layout/news_app/cubit/cubit.dart';
import 'package:app_theme_mansour/layout/news_app/cubit/states.dart';
import 'package:app_theme_mansour/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              // centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                )
              ],
              title: Text(
                'News App',
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                DioHelper.getData(
                  url: 'v2/top-headlines',
                  query: {
                    'country': 'eg',
                    'category': 'business',
                    'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
                  },
                ).then((value) {
                  print(value.data.toString());
                }).catchError((error){
                  print(error.toString());
                });
              },
              child: Icon(Icons.add_a_photo),
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItems),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
