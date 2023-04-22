import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _theme;

  ThemeData light = ThemeData.light().copyWith(
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
        selectedItemColor: Colors.yellow.shade800,
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
  ThemeData dark = ThemeData.dark().copyWith(
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

  ThemeProvider({required bool isDark}) {
    _theme = isDark ? dark : light;
  }

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_theme == dark) {
      _theme = light;
      prefs.setBool('isDarkTheme', false);
    } else {
      _theme = dark;
      prefs.setBool('isDarkTheme', true);
    }
    notifyListeners();
  }

  ThemeData get themeData => _theme;
  bool get isDarkMode => _theme == dark;
}

class ThemeProviderExample extends StatelessWidget {
  const ThemeProviderExample({super.key});
  final String theme = 'dark';
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) => SwitchListTile(
      value: themeProvider.isDarkMode,
      onChanged: (bool value) {
        themeProvider.swapTheme();
      },
      title: Text('Switch to $theme theme'),
      selected: true,
    ));
  }
}
