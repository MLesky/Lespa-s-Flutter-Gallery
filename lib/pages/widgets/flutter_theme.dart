import 'package:flutter/material.dart';

class FlutterThemeExample extends StatefulWidget {
  const FlutterThemeExample({Key? key}) : super(key: key);

  @override
  State<FlutterThemeExample> createState() => _FlutterThemeExampleState();
}

class _FlutterThemeExampleState extends State<FlutterThemeExample> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
        actions: [Switch(value: isDarkTheme, onChanged: (value) => setState(() => isDarkTheme = value))],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Wrap(
          children: [
            const Text('Flutter is awesome, has a lot of things to learn and do'),
            ElevatedButton(onPressed: (){}, child: const Text('Click Me')),
            const Icon(Icons.account_circle),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.send), label: const Text('Click Me'))
          ],
        ),
      ),
    );
  }
}
