// ignore_for_file: prefer_const_constructors

import 'package:app_theme_mansour/layout/news_app/cubit/cubit.dart';
import 'package:app_theme_mansour/layout/news_app/cubit/states.dart';
import 'package:app_theme_mansour/shared/components/components.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        var List = NewsCubit.get(context).sports;
        return ConditionalBuilder(
          condition: List.length > 0,
          builder: (BuildContext context) => ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildArticleItem(List[index]),
            separatorBuilder: (context, index) => myDivider(),
            itemCount: 10,
          ),
          fallback: (BuildContext context) => Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
