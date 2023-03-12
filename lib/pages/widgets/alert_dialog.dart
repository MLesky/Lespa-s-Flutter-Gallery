import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({super.key});

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  bool? accept;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Text(accept == null ? 'Please make a choice' : 'Accepted : ${accept! ? 'Yes' : 'No'}'),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              showDialog(context: context, builder: (context) => AlertDialog(
                title: const Text("Accept"),
                content: const Text("Do you accept?"),
                actions: [
                  TextButton(onPressed: (){setState(() => accept = false); Navigator.of(context).pop();}, child: const Text('No')),
                  TextButton(onPressed: (){setState(() => accept = true); Navigator.of(context).pop();}, child: const Text('Yes')),
                ],
              ),);
            },
            child: const Text("Open Dialog"),
          ),
        ],
      ),
    );
  }
}