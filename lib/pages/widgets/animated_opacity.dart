import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Container(width: 250, height: 70, color: Colors.blue),
            const SizedBox(
              height: 15.0,
            ),
            AnimatedOpacity(opacity: opacityValue,
            duration: const Duration(milliseconds: 500),
            child: Container(width: 250, height: 70, color: Colors.blue)),
            const SizedBox(
              height: 15.0,
            ),
            AnimatedOpacity(opacity: opacityValue,
                duration: const Duration(seconds: 1),
                child: Container(width: 250, height: 70, color: Colors.blue)),
            const SizedBox(
              height: 15.0,
            ),
            AnimatedOpacity(opacity: opacityValue,
                duration: const Duration(milliseconds: 2000),
                curve: Curves.bounceInOut,
                child: Container(width: 250, height: 70, color: Colors.blue)),
            const SizedBox(
              height: 15.0,
            ),
            Container(width: 250, height: 70, color: Colors.blue),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              "Opacity: ${opacityValue.toStringAsFixed(2)}",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(onPressed: (){setState(() {
              opacityValue = Random().nextDouble();
            });}, child: const Text('change opacity')),
          ],
        ),
      ],
    );
  }
}
