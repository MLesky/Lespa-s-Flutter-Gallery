import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drink {
  final String name;
  bool selected;
  Drink(this.name, this.selected);
}

class DrinksProvider extends ChangeNotifier {
  int _quantity = 0;
  String title = 'Drink Menu';

  void incrementQuantity() {
    if (_quantity < 10) _quantity++;
    notifyListeners();
  }

  void decrementQuantity() {
    if (_quantity > 0) _quantity--;
    notifyListeners();
  }

  updateTitle(index) {
    title = index == 0 ? 'Drink Menu' : 'List of Orders';
    notifyListeners();
  }

  int get quantityOfDrinks => _quantity;

  final List<Drink> _drinks = [
    Drink('Water', false),
    Drink('Coffee', true),
    Drink('Milk', false),
    Drink('Tea', false),
  ];

  // get method for drinks
  List<Drink> get drinks => _drinks;

  // select drink method
  void selectDrink(Drink drink, bool selected) {
    _drinks.firstWhere((element) => element.name == drink.name).selected =
        selected;
    notifyListeners();
  }

  // selected drinks
  List<Drink> get selectedDrinks =>
      _drinks.where((element) => element.selected).toList();
}

class CheckboxProviderScreenState extends StatelessWidget {
  const CheckboxProviderScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Consumer<DrinksProvider>(
        builder: (_, drinksProvider, child) => Scaffold(
          appBar: AppBar(
            title: Text(drinksProvider.title),
            bottom: TabBar(onTap: (index) {
              drinksProvider.updateTitle(index);
            },
                tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Menu'),
                  SizedBox(width: 15,),
                  Icon(Icons.menu),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Others'),
                  const SizedBox(width: 15,),
                  Badge(label: Text('${drinksProvider.selectedDrinks.length}'), child: const Icon(Icons.shopping_cart),),
                ],
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              DrinkOrders(),
              OrdersList(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrinkOrders extends StatelessWidget {
  const DrinkOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Consumer<DrinksProvider>(
          builder: (context, drinksProvider, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Drinks tonight',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              ...drinksProvider.drinks
                  .map((drink) => DrinksWidget(
                      drink: drink,
                      onChanged: (value) {
                        drinksProvider.selectDrink(drink, value!);
                      }))
                  .toList(),
              Text(
                'The order is',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (_, index) => ListTile(
                  title: Text(drinksProvider.selectedDrinks[index].name),
                ),
                itemCount: drinksProvider.selectedDrinks.length,
              )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        drinksProvider.incrementQuantity();
                      },
                      icon: const Icon(Icons.add)),
                  Text('${drinksProvider.quantityOfDrinks}',
                      style: Theme.of(context).textTheme.headlineLarge),
                  IconButton(
                      onPressed: () {
                        drinksProvider.decrementQuantity();
                      },
                      icon: const Icon(Icons.remove)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DrinksProvider>(
      builder: (context, drinksProvider, child) => Column(
        children: [
          for (int index = 0;
              index < drinksProvider.selectedDrinks.length;
              index++)
            ListTile(
              leading: Text('${index + 1}'),
              title: Text(drinksProvider.selectedDrinks[index].name),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    drinksProvider.incrementQuantity();
                  },
                  icon: const Icon(Icons.add)),
              Text('${drinksProvider.quantityOfDrinks}',
                  style: Theme.of(context).textTheme.headlineLarge),
              IconButton(
                  onPressed: () {
                    drinksProvider.decrementQuantity();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          ),
        ],
      ),
    );
  }
}

class DrinksWidget extends StatelessWidget {
  const DrinksWidget({super.key, required this.onChanged, required this.drink});
  final void Function(bool? value) onChanged;
  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: drink.selected, onChanged: onChanged),
        Text(drink.name),
      ],
    );
  }
}
