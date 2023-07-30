import 'package:flutter/material.dart';

class StateFulBuilderExample extends StatelessWidget {
  const StateFulBuilderExample({super.key});

  static int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) =>
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() => counter--);
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        '$counter',
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() => counter++);
                          },
                          icon: const Icon(Icons.add)),
                    ],
        ),
      ),
    );
  }
}
