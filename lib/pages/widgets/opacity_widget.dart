import 'package:flutter/material.dart';

class OpacityWidgetExample extends StatefulWidget {
  const OpacityWidgetExample({super.key});

  @override
  State<OpacityWidgetExample> createState() => _OpacityWidgetExampleState();
}

class _OpacityWidgetExampleState extends State<OpacityWidgetExample> {
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
            Container(width: 250, height: 150, color: Colors.blue),
            const SizedBox(
              height: 15.0,
            ),
            Opacity(
                opacity: opacityValue,
                alwaysIncludeSemantics: true,
                child: Container(width: 250, height: 150, color: Colors.blue)),
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
            Slider(
                value: opacityValue,
                onChanged: (value) {
                  setState(() => opacityValue = value);
                })
          ],
        ),
      ],
    );
  }
}
