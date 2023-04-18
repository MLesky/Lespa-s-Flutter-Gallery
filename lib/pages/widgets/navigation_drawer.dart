import 'package:flutter/material.dart';

class ScaffoldNavigationDrawerExample extends StatefulWidget {
  const ScaffoldNavigationDrawerExample({Key? key}) : super(key: key);

  @override
  State<ScaffoldNavigationDrawerExample> createState() =>
      _ScaffoldNavigationDrawerExampleState();
}

class _ScaffoldNavigationDrawerExampleState
    extends State<ScaffoldNavigationDrawerExample> {
  List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.account_circle, 'title': 'Account'},
    {'icon': Icons.settings_outlined, 'title': 'Settings'},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  int selectedIndex = 0;
  bool navIsEnd = false;

  @override
  Widget build(BuildContext context) {
    Widget sideNavDrawer = Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mypic.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Mbah Lesky'),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )),
          for (int i = 0; i < items.length; i++)
            ListTile(
              leading: Icon(items[i]['icon']),
              title: Text(items[i]['title']),
              onTap: () => setState(() {
                selectedIndex = i;
                Navigator.of(context).pop();
              }),
            ),
        ],
      ),
    );

    return _buildScaffold(sideDrawer: sideNavDrawer);
  }

  Widget _buildScaffold({Widget? sideDrawer}) {
    return !navIsEnd
        ? Scaffold(
            appBar: AppBar(
              title: Text(items[selectedIndex]['title']),
            ),
            drawer: sideDrawer,
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('End Drawer'),
                    const SizedBox(
                      width: 20,
                    ),
                    Switch(
                        value: navIsEnd,
                        onChanged: (value) => setState(() => navIsEnd = value)),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Icon(
                      items[selectedIndex]['icon'],
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(items[selectedIndex]['title']),
            ),
            endDrawer: sideDrawer,
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('End Drawer'),
                    const SizedBox(
                      width: 20,
                    ),
                    Switch(
                        value: navIsEnd,
                        onChanged: (value) => setState(() => navIsEnd = value)),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Icon(
                      items[selectedIndex]['icon'],
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
