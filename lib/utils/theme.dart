import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.green.shade600,
    primaryColorDark: Colors.green.shade900,
    primaryColorLight: Colors.green.shade200,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: Colors.yellow[600],
        size: 40,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      showUnselectedLabels: false,
      backgroundColor: Colors.green.shade600,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green[600],
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.green[600],
    )
);
ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.green.shade600,
    primaryColorDark: Colors.green.shade900,
    primaryColorLight: Colors.green.shade200,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: Colors.green[600],
        size: 40,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      selectedItemColor: Colors.green.shade800,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      showUnselectedLabels: false,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.green[600],
    )
);
