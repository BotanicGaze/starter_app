import 'package:flutter/material.dart';
import 'package:starter_app/global/global.dart';

import 'package:starter_app/global/theme/dark_theme.dart';
import 'package:starter_app/global/theme/light_theme.dart';
import 'package:starter_app/global/theme/theme_service.dart';

export 'custom_theme_data.dart';

final themeProvider = Provider<AppTheme>(AppTheme.new);
final themeModeProvider =
    StateProvider.autoDispose<ThemeMode>((ref) => ThemeMode.light);

class AppTheme extends ThemeService {
  AppTheme(super.read);

  ThemeData get lightTheme => LightTheme.lightTheme;
  ThemeData get darkTheme => DarkTheme.darkTheme;
}
