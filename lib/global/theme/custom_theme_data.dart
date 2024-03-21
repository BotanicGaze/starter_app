import 'package:flutter/material.dart';

extension CustomThemeOption on ThemeData {
  CustomThemeData get customOption =>
      brightness == Brightness.dark ? _customDarkTheme : _customLightTheme;
}

final _customLightTheme = CustomThemeData(
  themeIcon: Icons.light_mode,
);

final _customDarkTheme = CustomThemeData(
  themeIcon: Icons.dark_mode,
  isDarkMode: true,
);

class CustomThemeData {

  CustomThemeData({
    required this.themeIcon, this.kSpace = 10,
    this.isDarkMode = false,
  });
  final double kSpace;
  final IconData themeIcon;
  final bool isDarkMode;
}
