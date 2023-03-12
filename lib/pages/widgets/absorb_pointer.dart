import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatefulWidget {
  const AbsorbPointerExample({super.key});

  @override
  State<AbsorbPointerExample> createState() => _AbsorbPointerExampleState();
}

class _AbsorbPointerExampleState extends State<AbsorbPointerExample> {
  int count = 0;
  bool isAbsorbing = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Is Absorbing"),
            Switch(value: isAbsorbing, onChanged: (value){setState(() {
              isAbsorbing = value;
            });}),
          ],
        ),
        Expanded(
          child: AbsorbPointer(
            absorbing: isAbsorbing,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  const Text('The AbsorbPointer disables events such as clicking, scrolling, etc.\n Try clicking on the button or scrolling the list'),
                  const SizedBox(
                    height: 15,
                  ),
                  Text('Button Clicked $count ${count == 1 ? 'time' : 'times'}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() => count++);
                          },
                          child: const Text('Click Me')),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('List', textAlign: TextAlign.center,),
                  for (int i = 1; i <= 10; i++) Container(
                    color: Colors.indigo,
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                        child: Text(
                          "$i",
                          style: const TextStyle(color: Colors.white, fontSize: 18.0),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
