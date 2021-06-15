import 'package:flutter/material.dart';
import 'package:telegram/screens/search_screen.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'Telegram',
      style: Theme.of(context).textTheme.headline5,
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        icon: Icon(Icons.search),
      ),
    ],
  );
}
