import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_gallery/pages/packages/theme_provider.dart';
import 'package:my_flutter_gallery/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDark: prefs.getBool('isDarkTheme') ?? false),
      child: const MyApp(),
    )
  );
}

/// Using [MaterialApp.router] for the [GoRouter] package
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => MaterialApp.router(
      title: 'Lespa\'s Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.themeData,
      routerConfig: routes,
    ));
  }
}