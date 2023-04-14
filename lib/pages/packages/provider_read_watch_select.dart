import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// [MyModel] class
class MyModel with ChangeNotifier{

  int number;
  final String name;

  MyModel({Key? key, required this.number, required this.name});

  inc(){
    if (number < 20) number++;
    notifyListeners();
  }

  dec(){
    if (number > 0 ) number--;
    notifyListeners();
  }
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
          create: (context) => MyModel(number: 19, name: 'Mbah Lesky',),
          child: Column(
            children: <Widget>[
              const ProviderRead(),
              Divider(thickness: 3, color: Theme.of(context).primaryColor, height: 60,),
              const ProviderWatch(),
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

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
          child: Column(
            children: [
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () => model.dec(), icon: const Icon(Icons.remove)),
        Text('${model.number}',
            style: Theme.of(context).textTheme.titleMedium),
        IconButton(onPressed: () => model.inc(), icon: const Icon(Icons.add)),
      ],
    );
  }
}
