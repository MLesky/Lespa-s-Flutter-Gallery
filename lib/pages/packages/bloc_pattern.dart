import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum BlocEvent { inc, dec }

class BlocCounter extends Bloc<BlocEvent, int> {
  BlocCounter(super.initialState);

  int get initialState => 0;

  Stream<int> mapEventToState(BlocEvent event) async* {
    switch (event) {
      case BlocEvent.inc:
        yield state + 1;
        break;
      case BlocEvent.dec:
        yield state - 1;
        break;
    }
  }
}

class BlocPatternExample extends StatelessWidget {
  const BlocPatternExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocCounter blocCount = BlocProvider.of<BlocCounter>(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                blocCount.add(BlocEvent.inc);
              },
              icon: const Icon(Icons.add)),
          BlocBuilder(builder: (context, state) {
            return Text('$state');
          }),
          IconButton(
              onPressed: () {
                blocCount.add(BlocEvent.dec);
              },
              icon: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCounter(9),
      child: const BlocPatternExample(),
    );
  }
}
