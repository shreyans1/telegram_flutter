import 'package:flutter/material.dart';
import 'package:telegram/screens/new_chat.dart';

FloatingActionButton customFAB(BuildContext context, bool active) {
  print(active);

  return FloatingActionButton(
    child: Icon(Icons.create),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewChat(),
        ),
      );
    },
  );
}
