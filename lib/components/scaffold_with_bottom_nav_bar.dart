import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_gallery/pages/animation.dart';
import 'package:my_flutter_gallery/pages/packages.dart';
import 'package:my_flutter_gallery/pages/widgets.dart';

/// [ScaffoldWithBottomNavBar] is a [StatefulWidget]
/// It has a [Scaffold] with a [BottomNavigationBar] which has 3 [BottomNavigationBarItem]s for 3 Screens:
/// [HomeScreen] (Widgets), [PackagesScreen] (Packages), and [AnimationScreen] (Animation)
/// All other widgets/pages are descendants of one of these 3
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

  void goTo(BuildContext context, int index) {
    context.goNamed(namedLocations[index]);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String location = (GoRouter.of(context).location);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lespa\'s Flutter Gallery - ${location.substring(location.lastIndexOf('/')+1).toUpperCase()}', textScaleFactor: 0.8,),
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
        onTap: (index) => goTo(context, index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15.0,
        showUnselectedLabels: false,
      ),
    );
  }
}
