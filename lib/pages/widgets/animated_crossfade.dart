import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool changeState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
          crossFadeState: changeState
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 200),
          firstChild: Container(
            width: 200,
            height: 100,
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text("Hello There",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ),
          secondChild: Container(
            decoration: const BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
            width: 150,
            height: 150,
            child: Center(
              child: Text("Good Bye",
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16)),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                changeState = !changeState;
              });
            },
            child: const Text("change")),
      ],
    );
  }
}
