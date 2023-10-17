import 'package:flutter/material.dart';

class WebProvider with ChangeNotifier {
  int _chatIndex = 0;

  int get chatIndex => _chatIndex;

  void setChatIndex(int chatIndex) {
    _chatIndex = chatIndex;
    notifyListeners();
  }

  bool theme = ThemeMode.system == ThemeMode.dark ? true : false;

  bool get getTheme => theme;

  void setTheme() {
    theme = !theme;
    notifyListeners();
  }
}
