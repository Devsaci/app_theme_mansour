import 'package:app_theme_mansour/shared/components/components.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          defaultFormField(
            controller: searchController,
            type: TextInputType.text,
            validate: (String value)
            {
              if(value.isEmpty)
              {
                return 'search must not be empty';
              }
              return null;
            },,
            label: 'Search',
            prefix: Icons.search,
          )
        ],
      ),
    );
  }
}
