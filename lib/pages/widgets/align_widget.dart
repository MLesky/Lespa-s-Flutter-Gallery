import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AlignWidgetExample extends StatefulWidget {
  const AlignWidgetExample({super.key});

  @override
  State<AlignWidgetExample> createState() => _AlignWidgetExampleState();
}

class _AlignWidgetExampleState extends State<AlignWidgetExample> {
  double horizontalValue = 0.0;
  double verticalValue = 0.0;
  Alignment boxAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.topLeft;
                        horizontalValue = -1;
                        verticalValue = -1;
                      });
                    },
                    child: const Text('Top Left')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.topCenter;
                        horizontalValue = 0;
                        verticalValue = -1;
                      });
                    },
                    child: const Text('Top Center')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.topRight;
                        horizontalValue = 1;
                        verticalValue = -1;
                      });
                    },
                    child: const Text('Top Right')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.centerLeft;
                        horizontalValue = -1;
                        verticalValue = 0;
                      });
                    },
                    child: const Text('Center Left')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.center;
                        horizontalValue = 0;
                        verticalValue = 0;
                      });
                    },
                    child: const Text('Center')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.centerRight;
                        horizontalValue = 1;
                        verticalValue = 0;
                      });
                    },
                    child: const Text('Center Right')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.bottomLeft;
                        horizontalValue = -1;
                        verticalValue = 1;
                      });
                    },
                    child: const Text('Down Left')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.bottomCenter;
                        horizontalValue = 0;
                        verticalValue = 1;
                      });
                    },
                    child: const Text('Down Center')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        boxAlignment = Alignment.bottomRight;
                        horizontalValue = 1;
                        verticalValue = 1;
                      });
                    },
                    child: const Text('Down Right')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: SfSlider(
                      value: horizontalValue,
                      min: -1,
                      interval: 0.5,
                      showDividers: true,
                      showLabels: true,
                      showTicks: true,
                      minorTicksPerInterval: 5,
                      enableTooltip: true,
                      stepSize: 0.1,
                      max: 1,
                      onChanged: (value) => setState(() {
                            horizontalValue = value;
                            boxAlignment = Alignment(horizontalValue, verticalValue);
                          })),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                  ),
                  child: Align(
                    alignment: boxAlignment,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                              "x: ${horizontalValue.toStringAsFixed(2)}\ny: ${verticalValue.toStringAsFixed(2)}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16.0))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: SfSlider.vertical(
                      value: verticalValue,
                      isInversed: true,
                      min: -1,
                      interval: 0.5,
                      showDividers: true,
                      showLabels: true,
                      showTicks: true,
                      minorTicksPerInterval: 5,
                      enableTooltip: true,
                      stepSize: 0.1,
                      max: 1,
                      onChanged: (value) => setState(() {
                        verticalValue = value;
                        boxAlignment = Alignment(horizontalValue, verticalValue);
                      })),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
