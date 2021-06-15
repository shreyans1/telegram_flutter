import 'package:flutter/material.dart';

ThemeData customLightTheme() {
  return ThemeData.light();
}

ThemeData customDarkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Color(0xFF212E3B),
    canvasColor: Color(0xFF1D242F),
    scaffoldBackgroundColor: Color(0xFF1E2833),
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primaryVariant: Color(0xFF24313F),
          secondary: Color(0xFF5EA3DE),
        ),
  );
}
