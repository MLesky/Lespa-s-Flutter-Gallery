import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  int colorIndex = 4;
  int borderRadiusIndex = 0;
  double boxWidth = 300;
  double boxHeight = 200;
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.black,
    Colors.black12,
    Colors.tealAccent,
    Colors.lightGreen,
    Colors.white10,
  ];
  List<BorderRadius?> radius = [
    null,
    BorderRadius.zero,
    BorderRadius.all(Radius.elliptical(
        Random().nextInt(500) + 0.0, Random().nextInt(500) + 0.0)),
    BorderRadius.all(Radius.circular(Random().nextInt(500) + 0.0)),
    BorderRadius.circular(Random().nextInt(500) + 0.0),
    BorderRadius.horizontal(
        left: Radius.circular(Random().nextInt(500) + 0.0),
        right: Radius.elliptical(
            Random().nextInt(500) + 0.0, Random().nextInt(500) + 0.0))
  ];
  BoxShape shapeOfBox = BoxShape.rectangle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          AnimatedContainer(
            width: boxWidth,
            height: boxHeight,
            decoration: BoxDecoration(
              color: colors[colorIndex],
              borderRadius: radius[borderRadiusIndex],
              shape: shapeOfBox,
            ),
            duration: const Duration(milliseconds: 600),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "${colors[colorIndex]}\n\n$boxWidth x $boxHeight}\n\n${radius[borderRadiusIndex]}\n\n$shapeOfBox",
                textScaleFactor: 0.7,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              )),
            ),
          ),
          const Divider(
            height: 50,
            thickness: 4,
          ),
          Wrap(
            spacing: 20,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      setState(() {
                        colorIndex = Random().nextInt(colors.length);
                      });
                    });
                  },
                  child: const Text("Color")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      boxWidth = Random().nextInt(300 - 100) + 100.0;
                      boxHeight = Random().nextInt(400 - 100) + 100.0;
                    });
                  },
                  child: const Text("Size")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeOfBox = shapeOfBox == BoxShape.rectangle &&
                              borderRadiusIndex == 0
                          ? BoxShape.circle
                          : BoxShape.rectangle;
                    });
                  },
                  child: const Text("Shape")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      shapeOfBox = BoxShape.rectangle;
                      borderRadiusIndex = Random().nextInt(radius.length);
                    });
                  },
                  child: const Text("Border Radius")),
            ],
          )
        ],
      ),
    );
  }
}
