import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});
  final Widget child;
  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  int currentIndex = 0;

  final List namedLocations = ['widget', 'package', 'animation'];

  void trying(BuildContext context, int index) {
    context.goNamed(namedLocations[index]);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lespa\'s Flutter Gallery'),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: "Widgets",
            activeIcon: Icon(Icons.widgets),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Packages",
            activeIcon: Icon(Icons.add_box),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation_outlined),
            label: "Animations",
            activeIcon: Icon(Icons.animation),
          ),
        ],
        onTap: (index) => trying(context, index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15.0,
        showUnselectedLabels: false,
      ),
    );
  }
}
