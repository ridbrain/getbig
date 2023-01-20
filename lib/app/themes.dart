import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double borderButtonWidth = 1.5;

const Color yellow = Color(0xFFffcc00);
const Color onYellow = Color(0xFF6B5600);
const Color secondary = Color(0xFF006B61);
const Color onSecondary = Color(0xFF00F5DC);

const Color grey = Color(0xff1c1c1e);
const Color lightGrey = Color.fromRGBO(97, 97, 97, 1);
const Color transparentGrey = Color.fromARGB(154, 28, 28, 30);

final darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: yellow,
    onPrimary: onYellow,
    secondary: secondary,
    onSecondary: onSecondary,
    error: yellow,
    onError: yellow,
    background: Colors.black,
    onBackground: Colors.grey,
    surface: Colors.black,
    onSurface: Colors.grey,
  ),
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  cardColor: grey,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedIconTheme: IconThemeData(color: yellow),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: yellow,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    shadowColor: Colors.black.withOpacity(0.2),
    titleTextStyle: GoogleFonts.rubik(
      color: Colors.white,
      fontSize: 18,
    ),
  ),
  textTheme: TextTheme(
    bodyText1: GoogleFonts.rubik(
      letterSpacing: 1,
    ),
    bodyText2: GoogleFonts.rubik(
      letterSpacing: 1,
    ),
  ).apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
);
