import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,

  // app bar color black
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
  ),

  // button bg color green
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xff667129),
  ),
);
