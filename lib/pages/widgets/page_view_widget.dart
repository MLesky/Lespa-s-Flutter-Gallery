import 'package:flutter/material.dart';

class PageViewWidgetExample extends StatefulWidget {
  const PageViewWidgetExample({super.key});

  @override
  State<PageViewWidgetExample> createState() => _PageViewWidgetExampleState();
}

class _PageViewWidgetExampleState extends State<PageViewWidgetExample> {
  int currentTap = 0;

  void updateIndex(int index){setState(() => currentTap = index);}

  List pageScreens = [
    PageView(
      controller: PageController(initialPage: 0),
      scrollDirection: Axis.vertical,
      children: _screens,
    ),

    PageView(
      controller: PageController(initialPage: 0),
      scrollDirection: Axis.horizontal,
      children: _screens,
    ),
  ];

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: pageScreens[currentTap],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_downward), label: 'Vertical Scroll'),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward), label: 'Horizontal Scroll'),
        ],
        elevation: 5.0,
        onTap: updateIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

List<Widget> _screens = const [
    Center(child: Text("Page 1")),
    Center(child: Text("Page 2")),
    Center(child: Text("Page 3")),
    Center(child: Text("Page 4")),
    Center(child: Text("Page 5")),
];