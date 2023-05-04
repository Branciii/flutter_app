import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme_colours.dart';

class AppTheme {
  TextStyle defaultTextStyle = const TextStyle(
    fontFamily: "Inter",
  );

  ThemeData get lightThemeData => ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColours.navbarColour,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ThemeColours.navbarColour,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          )),
      scaffoldBackgroundColor: ThemeColours.backgroundColour,
      dividerColor: ThemeColours.navbarColour);

  ThemeData get darkThemeData => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColours.darkNavbarColour,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ThemeColours.darkNavbarColour,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          )),
      scaffoldBackgroundColor: ThemeColours.backgroundColour,
      dividerColor: ThemeColours.darkNavbarColour);
}
