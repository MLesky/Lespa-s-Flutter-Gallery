import 'package:flutter/material.dart';

class ScaffoldSnackBarExample extends StatelessWidget {
  const ScaffoldSnackBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('This is a Snack Bar'),
                TextButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                )
              ],
            )));
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
