import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';

@freezed
abstract class AppTheme with _$AppTheme {
  const AppTheme._();
  const factory AppTheme({required ThemeMode themeMode, required Color seed}) =
      _AppTheme;

  static const defaultTheme = AppTheme(
    themeMode: ThemeMode.system,
    seed: Colors.teal,
  );

  ThemeData get lightTheme =>
      ThemeData(colorSchemeSeed: seed, useMaterial3: true);
  ThemeData get darkTheme => ThemeData(
    colorSchemeSeed: seed,
    brightness: Brightness.dark,
    useMaterial3: true,
  );

  ThemeData computeTheme() => switch (themeMode) {
    ThemeMode.light => lightTheme,
    ThemeMode.dark => darkTheme,
    ThemeMode.system =>
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark
          ? darkTheme
          : lightTheme,
  };
}
