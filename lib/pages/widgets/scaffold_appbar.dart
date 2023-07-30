import 'package:flutter/material.dart';

class ScaffoldAppBarExample extends StatefulWidget {
  const ScaffoldAppBarExample({Key? key}) : super(key: key);

  @override
  State<ScaffoldAppBarExample> createState() => _ScaffoldAppBarExampleState();
}

class _ScaffoldAppBarExampleState extends State<ScaffoldAppBarExample> {
  List<IconData> appbarIcons = <IconData>[
    Icons.notifications, Icons.message, Icons.directions_bike_sharp, Icons.menu,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter AppBar'),
        actions: [
          for (int i = 0; i < appbarIcons.length; i++) IconButton(onPressed: () => setState(() => selectedIndex = i), icon: Icon(appbarIcons[i]), )
        ]
      ),

      body: Center(
        child: Icon(appbarIcons[selectedIndex], size: 100,),
      ),
    );
  }
}
