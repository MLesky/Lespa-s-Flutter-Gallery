import 'package:flutter/material.dart';

List<int> data = [for (int i = 1; i <= 31; i++) i];

class WrapWidgetExample extends StatefulWidget {
  const WrapWidgetExample({super.key});

  @override
  State<WrapWidgetExample> createState() => _WrapWidgetExampleState();
}

class _WrapWidgetExampleState extends State<WrapWidgetExample> {

  Color horizontalWrapButton = Colors.indigo;
  Color verticalWrapButton = Colors.indigo.shade200;
  Axis wrapDirection = Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      horizontalWrapButton = Colors.indigo;
                      verticalWrapButton = Colors.indigo.shade100;
                      wrapDirection = Axis.horizontal;
                    });
                  },
                  icon: const Icon(Icons.horizontal_rule_rounded),
                  label: const Text('Horizontal'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(horizontalWrapButton),
                  ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      horizontalWrapButton = Colors.indigo.shade100;
                      verticalWrapButton = Colors.indigo;
                      wrapDirection = Axis.vertical;
                    });
                  },
                  icon: const Icon(Icons.height),
                  label: const Text('Vertical'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(verticalWrapButton),
                ),),
            ],
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Wrap(
              direction: wrapDirection,
              spacing: 15.0,
              runSpacing: 15.0,
              children: [
                for(int i = 1; i < 12; i++) Container(color: Colors.indigo, width: 90, height: 90, child: Center(child: Text("$i", textScaleFactor: 2.0, style: const TextStyle(color: Colors.white))))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
