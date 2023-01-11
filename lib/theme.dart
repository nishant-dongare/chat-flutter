import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  tabBarTheme: const TabBarTheme(
    //for Tabs2White
    labelColor: Colors.white,
  ),
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Colors.red,
  primaryColor: Colors.white,
  primaryColorDark: Colors.red,
  primaryColorLight: const Color(0xFFFFCCCB),
  dividerColor: Colors.grey,
  primaryIconTheme: const IconThemeData(color: Colors.red),
  iconTheme: const IconThemeData(color: Colors.white),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[50],
    hintStyle: const TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    ),
  ),
  cardTheme: const CardTheme(color: Colors.white),
  cardColor: Colors.green[100],
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(),
  scaffoldBackgroundColor: Colors.grey[800],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[800],
    foregroundColor: Colors.white,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey[800],
    splashColor: Colors.grey[900],
  ),
  primaryIconTheme: const IconThemeData(color: Colors.black),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[900],
    hintStyle: const TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    ),
  ),

  cardTheme: CardTheme(color: Colors.grey[800]),
  cardColor: Colors.blueGrey,

  // primaryColor: Colors.grey[800],
  // primaryColorDark: Colors.grey[900],
  // dividerColor: Colors.grey,
  // primaryColorLight: Colors.grey[900],
  // primaryIconTheme: const IconThemeData(color: Colors.black),
  // iconTheme: const IconThemeData(color: Colors.white70),
  // cardColor: Colors.greenAccent[800],
  // floatingActionButtonTheme: FloatingActionButtonThemeData(
  //   backgroundColor: Colors.grey[900],
  // ),
);
