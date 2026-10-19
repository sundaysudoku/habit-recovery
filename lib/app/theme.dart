import 'package:flutter/material.dart';

/// Calm green seed color; Material 3 derives the full palette from it.
const _seedColor = Color(0xFF4F8A6E);

ThemeData buildLightTheme() =>
    ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: _seedColor));

ThemeData buildDarkTheme() => ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: _seedColor,
    brightness: Brightness.dark,
  ),
);
