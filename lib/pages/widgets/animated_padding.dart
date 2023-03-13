import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double paddingValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Expanded(child: Container( color: Colors.yellow,
            child: Center(
              child: AnimatedPadding(padding: EdgeInsets.all(paddingValue), duration: const Duration(seconds: 1), child: Container(color: Colors.blue, child: Center(child: Text("Padding: $paddingValue", style:
              const TextStyle(color: Colors.white, fontSize: 18.0)),),),),
            ),
          )),
          ElevatedButton(onPressed: (){setState(() {
            paddingValue = Random().nextInt(100) + 0.0;
          });}, child: const Text('change padding')),
        ],
      ),
    );
  }
}
