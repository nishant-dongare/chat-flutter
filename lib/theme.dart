import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.red,
  primaryColorDark: Colors.red,
  primaryColorLight: const Color(0xFFFFCCCB),
  scaffoldBackgroundColor: Colors.red,
  dividerColor: Colors.grey,
  primaryIconTheme: const IconThemeData(color: Colors.red),
  iconTheme: const IconThemeData(color: Colors.white),
  cardColor: Colors.greenAccent[100],
);

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[800],
  ),
  primarySwatch: Colors.red,
  primaryColor: Colors.grey[800],
  primaryColorDark: Colors.grey[900],
  scaffoldBackgroundColor: Colors.grey[800],
  dividerColor: Colors.grey,
  primaryColorLight: Colors.grey[900],
  primaryIconTheme: const IconThemeData(color: Colors.black),
  iconTheme: const IconThemeData(color: Colors.white70),
  cardColor: Colors.greenAccent[600],
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey[900],
  ),
);
