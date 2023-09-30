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
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    showCloseIcon: true,
                    content: Text('This is a snack-bar')));
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
