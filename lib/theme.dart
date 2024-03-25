import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white70,
    indicatorColor: Colors.transparent,
    dividerHeight: 0,
  ),
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Colors.red,
  primaryColor: Colors.white,
  primaryColorDark: Colors.red,
  primaryColorLight: const Color(0xFFFFCCCB),
  dividerColor: Colors.grey,
  primaryIconTheme: IconThemeData(color: Colors.grey[800]),
  iconTheme: const IconThemeData(color: Colors.white),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: Colors.redAccent,
      fontWeight: FontWeight.bold,
    ),
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
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.red),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white70,
    indicatorColor: Colors.transparent,
    dividerHeight: 0,
  ),
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.black12,
  ),
  // colorScheme: const ColorScheme.dark(
  //   primary:Color(0xffefb7ff),
  //   secondary: Colors.grey,
  // ),
  scaffoldBackgroundColor: Colors.grey[800],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[800],
    foregroundColor: Colors.white,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey[800],
    splashColor: Colors.grey[900],
  ),
  primaryIconTheme: const IconThemeData(color: Colors.white),
  inputDecorationTheme: InputDecorationTheme(
    outlineBorder: const BorderSide(color: Colors.white),
    labelStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    filled: true,
    fillColor: Colors.grey[800],
    hintStyle: const TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    ),
  ),
  cardTheme: CardTheme(color: Colors.grey[800]),
  cardColor: Colors.blueGrey,
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.black26),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
);
