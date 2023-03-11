import 'package:flutter/material.dart';

class FadeInImageExample extends StatelessWidget {
  const FadeInImageExample({super.key});
  final String title = 'Fade In Widget';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/placeholder.jpg',
        image:
            'https://www.linkpicture.com/q/1e207a32a42b9002c43aedb4255c98b3.jpg',
        height: 300.0,
        fadeInDuration: const Duration(seconds: 2),
      ),
    );
  }
}
