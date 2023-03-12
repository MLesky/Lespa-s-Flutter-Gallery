import 'package:flutter/material.dart';

class AboutDialogExample extends StatelessWidget {
  const AboutDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AboutDialog(
      applicationName: "Lespa's Flutter Gallery",
      applicationIcon: Image.asset(
        'assets/images/img_avatar3.png',
        width: 50.0,
        height: 50.0,
      ),
      applicationVersion: '1.0',
      children: [
        const Text(
            'This can also be built by the showAboutDialog function. for example on clicking a button'),
        ElevatedButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: "Lespa's Flutter Gallery",
                applicationIcon: Image.asset(
                  'assets/images/img_avatar3.png',
                  width: 50.0,
                  height: 50.0,
                ),
                applicationVersion: '1.0',
                children: [
                  const Text(
                      'The AboutDialog widget has now been built by the showAboutDialog function'),
                ],
              );
            },
            child: const Text('More Info')),
        const Text(
            "Clicking on the button will build another AboutDialog widget using the shoAboutDialogFunction"),
      ],
    );
  }
}
