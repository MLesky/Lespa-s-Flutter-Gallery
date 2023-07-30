import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  double verticalValue = 125;
  double horizontalValue = 70;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    width: 300,
                    height: 300,
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      child: const Center(
                        child: Text("Animated Position",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0)),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    width: 160,
                    height: 50,
                    top: verticalValue,
                    left: horizontalValue,
                    duration: const Duration(milliseconds: 600),
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text("X: ${(horizontalValue + 80).toStringAsFixed(2)} \nY: ${(verticalValue + 25).toStringAsFixed(2)}",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor, fontSize: 14.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        horizontalValue = 70;
                        verticalValue = 125;
                      });
                    },
                    child: const Text("Reset")),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            horizontalValue = Random().nextDouble() * 140;
                            verticalValue = Random().nextDouble() * 250;
                          });
                        },
                        child: const Text("change")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
