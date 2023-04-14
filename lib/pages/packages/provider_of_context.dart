import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// [MyModel] class
class MyModel {
  final int number;
  final String name;

  const MyModel({Key? key, required this.number, required this.name});
}

/// [ProviderRead] : [Provider] class
class ProviderRead extends StatelessWidget {
  const ProviderRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider - Read Extension')),
      body: Provider(
          create: (context) => const MyModel(number: 19, name: 'Mbah Lesky'),
          child: Column(
            children: const <Widget>[
              MyNameWidget(),
              MyNameWidgetSecond(),
            ],
          )),
    );
  }
}

/// [MyNameWidget] : [StatefulWidget] using [Provider]
/// Uses [context.read<MyModel>] in the [initState] function
class MyNameWidget extends StatefulWidget {
  const MyNameWidget({Key? key}) : super(key: key);

  @override
  State<MyNameWidget> createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  late MyModel myModel;

  @override
  void initState() {
    myModel = context.read<MyModel>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Text(myModel.name,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center),
      ),
    );
  }
}

/// [MyNameWidgetSecond] : [StatelessWidget] using [Provider]
/// uses [Provider.of<MyModel>(context)] in the [build] function

class MyNameWidgetSecond extends StatelessWidget {
  const MyNameWidgetSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyModel myModel = Provider.of<MyModel>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
          child: Text('${myModel.name} (second)',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center)),
    );
  }
}
