import 'package:flutter/material.dart';

List<int> _data = [for (int i = 1; i <= 31; i++) i];

class LayoutWidgetExample extends StatelessWidget {
  const LayoutWidgetExample({super.key});
  
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints) {
      late Widget displayedContent;

      double screenWidth = constraints.maxWidth;

      if (screenWidth >= 480) {
        displayedContent = _buildTwoColumn(items: _data);
      } else if (screenWidth >= 720) {
        displayedContent = _buildThreeColumn(items: _data);
      } else if (screenWidth >= 1080) {
        displayedContent = _buildFourColumn(items: _data);
      } else {
        displayedContent = _buildOneColumn(items: _data);
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

  Container _buildSquareBox(dynamic item) => Container(width: 230.0, height: 280.0, color: Colors.green[600], margin: const EdgeInsets.symmetric(vertical: 20.0), child: Center(child: Text('$item', textScaleFactor: 2.0, style: const TextStyle(color: Colors.white)),));

  Widget _buildOneColumn({List items = const []}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: items.map((item) => _buildSquareBox(item)).toList(),
    );
  }

  Widget _buildTwoColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%2 == 1).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%2 == 0).map((item) => _buildSquareBox(item)).toList(),
        ),
      ],
    );
  }

  Widget _buildThreeColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 0).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 1).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%3 == 2).map((item) => _buildSquareBox(item)).toList(),
        ),
      ],
    );
  }

  Widget _buildFourColumn({List items = const []}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 0).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 1).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 2).map((item) => _buildSquareBox(item)).toList(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items.where((element) => element%4 == 3).map((item) => _buildSquareBox(item)).toList(),
        ),
      ],
    );
  }
}