import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_flutter_gallery/utils/theme.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _theme;

  ThemeData light = lightTheme;
  ThemeData dark = darkTheme;

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
