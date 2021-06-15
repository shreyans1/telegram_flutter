import 'package:flutter/material.dart';
import 'package:telegram/constants/theme_data.dart';
import 'package:telegram/screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customLightTheme(),
      darkTheme: customDarkTheme(context),
      home: ChatScreen(),
    );
  }
}
