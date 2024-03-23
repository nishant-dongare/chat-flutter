import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  bool theme = ThemeMode.system == ThemeMode.dark ? true : false;

  bool get getTheme => theme;

  void setTheme() {
    theme = !theme;
    notifyListeners();
  }
}
