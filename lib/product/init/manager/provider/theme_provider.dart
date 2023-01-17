import 'package:flutter/material.dart';
import 'package:mvvm_injection/product/init/theme/application_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = ApplicationTheme.defaultTheme;

  void changeTheme({required ThemeData theme}) {
    currentTheme = theme;
    notifyListeners();
  }
}
