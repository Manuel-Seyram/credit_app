import 'package:flutter/material.dart';

import 'UI Screens/Auth_Screens/login.dart';

void main() {
  runApp(MaterialApp(
    home: const Login(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      expansionTileTheme: const ExpansionTileThemeData(
        collapsedIconColor: Color.fromRGBO(30, 73, 57, 1),
        collapsedTextColor: Color.fromRGBO(30, 73, 57, 1),
      ),
      focusColor: const Color.fromRGBO(30, 73, 57, 1),
      highlightColor: const Color.fromRGBO(30, 73, 57, 1),
      primaryColor: const Color.fromRGBO(30, 73, 57, 1),
    ),
  ));
}
