import 'package:flutter/material.dart';

List<int> data = [for (int i = 1; i <= 31; i++) i];

class LayoutWidgetExample extends StatelessWidget {
  const LayoutWidgetExample({super.key});
  
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints) {
      late Widget displayedContent;

      double screenWidth = constraints.maxWidth;

      if (screenWidth >= 480) {
        displayedContent = buildTwoColumn(items: data);
      } else if (screenWidth >= 720) {
        displayedContent = buildThreeColumn(items: data);
      } else if (screenWidth >= 1080) {
        displayedContent = buildFourColumn(items: data);
      } else {
        displayedContent = buildOneColumn(items: data);
      }

        return ListView(
        children: [
          Text('max width: ${constraints.maxWidth} \tmin width: ${constraints.minWidth} \tmax height: ${constraints.maxHeight} \tmin height: ${constraints.maxHeight}', textAlign: TextAlign.center,),
          const SizedBox(height: 20.0,),
          displayedContent,
        ],
      );
    });
  }

  Container buildSquareBox(dynamic item) => Container(width: 230.0, height: 280.0, color: Colors.green[600], margin: const EdgeInsets.symmetric(vertical: 20.0), child: Center(child: Text('$item', textScaleFactor: 2.0, style: const TextStyle(color: Colors.white)),));

  Widget buildOneColumn({List items = const []}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: items.map((item) => buildSquareBox(item)).toList(),
    );
  }

  Widget buildTwoColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%2 == 1).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%2 == 0).map((item) => buildSquareBox(item)).toList(),
        ),
      ],
    );
  }

  Widget buildThreeColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 0).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 1).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 2).map((item) => buildSquareBox(item)).toList(),
        ),
      ],
    );
  }

  Widget buildFourColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 0).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 1).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 2).map((item) => buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 3).map((item) => buildSquareBox(item)).toList(),
        ),
      ],
    );
  }
}