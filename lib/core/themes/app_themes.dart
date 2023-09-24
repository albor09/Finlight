import 'package:finance_manager/core/themes/color_scheme.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: _darkScheme.primary,
          onPrimary: _darkScheme.onPrimary,
          secondary: _darkScheme.secondary,
          onSecondary: _darkScheme.onSecondary,
          error: _darkScheme.danger,
          onError: _darkScheme.onDanger,
          background: _darkScheme.background,
          onBackground: _darkScheme.onBackground,
          surface: _darkScheme.surface,
          onSurface: _darkScheme.onSurface,
          surfaceVariant: _darkScheme.surfaceSecondary),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: _darkScheme.primary)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            )),
            foregroundColor: MaterialStateProperty.all(_darkScheme.onPrimary),
            backgroundColor: MaterialStateProperty.all(_darkScheme.primary)),
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: _darkScheme.surface,
          isDense: true,
          enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide:
                  BorderSide(color: _darkScheme.surfaceSecondary, width: 2),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(color: _darkScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(16))),
      switchTheme: SwitchThemeData(
          trackOutlineColor:
              MaterialStateProperty.all(_darkScheme.surfaceSecondary),
          trackColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return _darkScheme.primary;
            }
          })),
      iconTheme: IconThemeData(size: 26, color: _darkScheme.primary),
      fontFamily: 'Montserrat',
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }));

  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: _lightScheme.primary,
          onPrimary: _lightScheme.onPrimary,
          secondary: _lightScheme.secondary,
          onSecondary: _lightScheme.onSecondary,
          error: _lightScheme.danger,
          onError: _lightScheme.onDanger,
          background: _lightScheme.background,
          onBackground: _lightScheme.onBackground,
          surface: _lightScheme.surface,
          onSurface: _lightScheme.onSurface,
          surfaceVariant: _lightScheme.surfaceSecondary),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: _darkScheme.primary)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            )),
            foregroundColor: MaterialStateProperty.all(_lightScheme.onPrimary),
            backgroundColor: MaterialStateProperty.all(_lightScheme.primary)),
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: _lightScheme.surface,
          isDense: true,
          enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide:
                  BorderSide(color: _lightScheme.surfaceSecondary, width: 2),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: BorderSide(color: _lightScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(16))),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return _lightScheme.onPrimary;
            } else {
              return _lightScheme.surfaceSecondary;
            }
          }),
          trackOutlineColor:
              MaterialStateProperty.all(_lightScheme.surfaceSecondary),
          trackColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return _darkScheme.primary;
            }
          })),
      iconTheme: IconThemeData(size: 26, color: _lightScheme.primary),
      fontFamily: 'Montserrat',
      useMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }));

  static final AppColorScheme _darkScheme = AppColorScheme.dark();
  static final AppColorScheme _lightScheme = AppColorScheme.light();
}
