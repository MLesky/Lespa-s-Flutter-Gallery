import 'package:flutter/material.dart';

class FlutterTabsExample extends StatelessWidget {
  const FlutterTabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Tabs'),
            bottom: const TabBar(
              tabs : [
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.search))
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Icon(Icons.account_circle)),
              Center(child: Icon(Icons.notifications)),
              Center(child: Icon(Icons.search)),
            ],
          ),
        ),
      )
    );
  }
}
