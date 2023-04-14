import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// [MyModel] class
class MyModel with ChangeNotifier{

  int number = 4;
  String name = 'Lespa';

  inc(){
    if (number < 20) number++;
    notifyListeners();
  }

  dec(){
    if (number > 0 ) number--;
    notifyListeners();
  }

  changeName(){
    name = _names[Random().nextInt(_names.length)];
    notifyListeners();
  }

  final List<String> _names = const <String>['Lespa', 'Elkay', 'Mbah', 'Lesky', 'Kemuel'];
}

/// [ProviderReadWatchAndSelect] : [Provider] class [StatelessWidget]
/// uses [ListenableProvider]
class ProviderReadWatchAndSelect extends StatelessWidget {
  const ProviderReadWatchAndSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider - Read Extension')),
      body: ListenableProvider(
          create: (context) => MyModel(),
          child: Column(
            children: <Widget>[
              const ProviderRead(),
              Divider(thickness: 3, color: Theme.of(context).primaryColor, height: 60,),
              const ProviderWatch(),
              Divider(thickness: 3, color: Theme.of(context).primaryColor, height: 60,),
              const ProviderSelected(),
            ],
          )),
    );
  }
}

/// [ProviderRead] : [StatelessWidget] using [Provider]
/// uses [Provider.of<MyModel>(context)] in the [build] function
/// [Provider.of] can be used in place of [context.read]
/// but [context.read] won't read new state while [Provider.of] reads new state (update)

class ProviderRead extends StatelessWidget {
  const ProviderRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  var myModel = context.read<MyModel>();
     MyModel myModel = Provider.of<MyModel>(context);
     print('Provider Read Widget');
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
          child: Column(
            children: [
              const Text('Provider Read'),
              Text('${myModel.name}\nAge: ${myModel.number}',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center),
            ],
          )),
    );
  }
}

/// [ProviderWatch] : [StatelessWidget] using [Provider]
/// [context.watch] listens for changes on the value

class ProviderWatch extends StatelessWidget {
  const ProviderWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = context.watch<MyModel>();
    print('Provider Watch Widget');
    return Column(
      children: [
        const Text('Provider Watch'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () => model.dec(), icon: const Icon(Icons.remove)),
            Text('${model.number}',
                style: Theme.of(context).textTheme.titleMedium),
            IconButton(onPressed: () => model.inc(), icon: const Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}

/// [ProviderSelected] : [StatelessWidget] using [Provider]
/// [context.Selected] Selects only one property of the Provider Widget

class ProviderSelected extends StatelessWidget {
  const ProviderSelected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = context.select<MyModel, String>((MyModel myModel) => myModel.name);
    int age = context.select<MyModel, int>((MyModel myModel) => myModel.number);
    print('Provider Selected Widget');
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
          child: Column(
            children: [
              const Text('Provider Select'),
              Text('$name\nAge: $age',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center),
              ElevatedButton(onPressed: () => Provider.of<MyModel>(context, listen: false).changeName(), child: const Text('Change Name'),),
            ],
          )),
    );
  }
}