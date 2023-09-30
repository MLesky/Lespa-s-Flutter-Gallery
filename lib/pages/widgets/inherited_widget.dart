import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InheritedWidgetExample extends InheritedWidget {
  int counter = 0;
  InheritedWidgetExample({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static InheritedWidgetExample of(BuildContext context) {
    final InheritedWidgetExample? result =
        context.dependOnInheritedWidgetOfExactType<InheritedWidgetExample>();
    assert(result != null, 'No InheritedWidgetExample found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedWidgetExample oldWidget) {
    return oldWidget.counter == counter;
  }
}

class InheritedWidgetTestExample extends StatelessWidget {
  const InheritedWidgetTestExample({Key? key}) : super(key: key);
  static int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder:
        (BuildContext context, void Function(void Function()) setState) {
      return Scaffold(
        body: _screens[curIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Increase'),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove), label: 'Decrease'),
            BottomNavigationBarItem(
                icon: Icon(Icons.visibility), label: 'View'),
          ],
          onTap: (index) => setState(() => curIndex = index),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.yellow,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      );
    });
  }
}

List _screens = const <Widget>[
  _Screen1(),
  _Screen2(),
  _Screen3(),
];

class _Screen1 extends StatelessWidget {
  const _Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder:
          (BuildContext context, void Function(void Function()) setState) =>
              Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() => InheritedWidgetExample.of(context).counter++);
                },
                icon: const Icon(Icons.add)),
            const SizedBox(
              width: 50,
            ),
            Text('${InheritedWidgetExample.of(context).counter}'),
          ],
        ),
      ),
    );
  }
}

class _Screen2 extends StatelessWidget {
  const _Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder:
          (BuildContext context, void Function(void Function()) setState) =>
              Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${InheritedWidgetExample.of(context).counter}'),
            const SizedBox(
              width: 50,
            ),
            IconButton(
                onPressed: () {
                  setState(() => InheritedWidgetExample.of(context).counter--);
                },
                icon: const Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}

class _Screen3 extends StatelessWidget {
  const _Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder:
          (BuildContext context, void Function(void Function()) setState) =>
              Center(
        child: Text(
          '${InheritedWidgetExample.of(context).counter}',
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
