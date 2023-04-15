import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounter extends Cubit<int> {
  BlocCounter(super.initialState);

  int get initialState => 0;

  void inc() => state < 10 ? emit(state + 1) : emit(state);
  void dec() => state > 0 ? emit(state - 1) : emit(state);
}

class BlocPatternExample extends StatelessWidget {
  const BlocPatternExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocCounter blocCount = BlocProvider.of<BlocCounter>(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    blocCount.inc();
                  },
                  icon: const Icon(Icons.add)),
              BlocBuilder<BlocCounter, int>(builder: (context, state) {
                return Text('$state');
              }),
              IconButton(
                  onPressed: () {
                    blocCount.dec();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          ),
          const SecondWidget(),
        ],
      ),
    );
  }
}

class SecondWidget extends StatelessWidget{
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCounter, int>(builder: (_, state) => Text('The value is $state'));
  }

}

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCounter(3),
      child: const BlocPatternExample(),
    );
  }
}
