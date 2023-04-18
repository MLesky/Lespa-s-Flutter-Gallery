import 'package:flutter/material.dart';

class FlutterButtonsExample extends StatefulWidget {
  const FlutterButtonsExample({Key? key}) : super(key: key);

  @override
  State<FlutterButtonsExample> createState() => _FlutterButtonsExampleState();
}

class _FlutterButtonsExampleState extends State<FlutterButtonsExample> {
  List<String> items = ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh'];

  int materialButtonValue = 0;
  int textButtonValue = 0;
  int outlinedButtonValue = 0;
  int elevatedButtonValue = 0;
  int filledButtonValue = 0;
  int floatingActionButtonValue = 0;
  int iconButtonValue = 0;
  int closeButtonValue = 0;
  int backButtonValue = 0;

  int textButtonIconValue = 0;
  int outlinedButtonIconValue = 0;
  int elevatedButtonIconValue = 0;
  int filledButtonIconValue = 0;
  int filledButtonTonalValue = 0;
  int filledButtonTonalIconValue = 0;
  int floatingActionButtonExtendedValue = 0;
  int floatingActionButtonLargeValue = 0;
  int floatingActionButtonSmallValue = 0;
  String popupMenuButtonValue = 'None';
  String dropdownButtonValue = 'None';

  String buildValue(int value) {
    return '$value ${value == 1 ? 'click' : 'clicks'}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: ListView(
          children: [
            Divider(
              thickness: 3,
              height: 20,
              color: Colors.grey[800],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _ButtonWrapper(
                    title: 'Material Button',
                    button: MaterialButton(
                      onPressed: () => setState(() => materialButtonValue++),
                      child: const Text('Click Me'),
                    ),
                    value: buildValue(materialButtonValue)),
                _ButtonWrapper(
                  title: 'Text Button',
                  button: TextButton(
                    onPressed: () => setState(() => textButtonValue++),
                    child: const Text('Click Me'),
                  ),
                  value: buildValue(textButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Text Button',
                  button: OutlinedButton(
                    onPressed: () => setState(() => outlinedButtonValue++),
                    child: const Text('Click Me'),
                  ),
                  value: buildValue(outlinedButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Elevated Button',
                  button: ElevatedButton(
                    onPressed: () => setState(() => elevatedButtonValue++),
                    child: const Text('Click Me'),
                  ),
                  value: buildValue(elevatedButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Filled Button',
                  button: FilledButton(
                    onPressed: () => setState(() => filledButtonValue++),
                    child: const Text('Click Me'),
                  ),
                  value: buildValue(filledButtonValue),
                ),
                _ButtonWrapper(
                  title: 'FloatingAction Button',
                  button: FloatingActionButton(
                    onPressed: () =>
                        setState(() => floatingActionButtonValue++),
                    child: const Text(
                      'Click Me',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  value: buildValue(floatingActionButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Icon Button',
                  button: IconButton(
                    onPressed: () => setState(() => iconButtonValue++),
                    icon: const Icon(Icons.add),
                  ),
                  value: buildValue(iconButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Close Button',
                  button: CloseButton(
                    onPressed: () => setState(() => closeButtonValue++),
                  ),
                  value: buildValue(closeButtonValue),
                ),
                _ButtonWrapper(
                  title: 'Back Button',
                  button: BackButton(
                    onPressed: () => setState(() => backButtonValue++),
                  ),
                  value: buildValue(backButtonValue),
                ),
              ],
            ),
            Divider(
              thickness: 3,
              height: 20,
              color: Colors.grey[800],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _ButtonWrapper(
                  title: 'Text Button Icon',
                  button: TextButton.icon(
                    onPressed: () => setState(() => textButtonIconValue++),
                    icon: const Icon(Icons.send),
                    label: const Text('Click Me'),
                  ),
                  value: buildValue(textButtonIconValue),
                ),
                _ButtonWrapper(
                  title: 'Outlined Button Icon',
                  button: OutlinedButton.icon(
                    onPressed: () => setState(() => outlinedButtonIconValue++),
                    icon: const Icon(Icons.send),
                    label: const Text('Click Me'),
                  ),
                  value: buildValue(outlinedButtonIconValue),
                ),
                _ButtonWrapper(
                  title: 'Elevated Icon Button',
                  button: ElevatedButton.icon(
                    onPressed: () => setState(() => elevatedButtonIconValue++),
                    icon: const Icon(Icons.send),
                    label: const Text('Click Me'),
                  ),
                  value: buildValue(elevatedButtonIconValue),
                ),
                _ButtonWrapper(
                  title: 'Filled Icon Button',
                  button: FilledButton.icon(
                    onPressed: () => setState(() => filledButtonIconValue++),
                    icon: const Icon(Icons.send),
                    label: const Text('Click Me'),
                  ),
                  value: buildValue(filledButtonIconValue),
                ),
                _ButtonWrapper(
                  title: 'Filled Tonal Button',
                  button: FilledButton.tonal(
                    onPressed: () => setState(() => filledButtonTonalValue++),
                    child: const Text('Click Me'),
                  ),
                  value: buildValue(filledButtonTonalValue),
                ),
                _ButtonWrapper(
                  title: 'Filled Tonal Icon Button',
                  button: FilledButton.tonalIcon(
                    onPressed: () =>
                        setState(() => filledButtonTonalIconValue++),
                    icon: const Icon(Icons.send),
                    label: const Text('Click Me'),
                  ),
                  value: buildValue(filledButtonTonalIconValue),
                ),
                _ButtonWrapper(
                  title: 'FloatingAction Extended Button',
                  button: FloatingActionButton.extended(
                    onPressed: () =>
                        setState(() => floatingActionButtonExtendedValue++),
                    icon: const Icon(Icons.send),
                    label: const Text(
                      'Click Me',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  value: buildValue(floatingActionButtonExtendedValue),
                ),
                _ButtonWrapper(
                  title: 'FloatingAction Large Button',
                  button: FloatingActionButton.large(
                    onPressed: () =>
                        setState(() => floatingActionButtonLargeValue++),
                    child: const Text(
                      'Click Me',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  value: buildValue(floatingActionButtonLargeValue),
                ),
                _ButtonWrapper(
                  title: 'FloatingAction Small Button',
                  button: FloatingActionButton.small(
                    onPressed: () =>
                        setState(() => floatingActionButtonSmallValue++),
                    child: const Text(
                      'Click Me',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  value: buildValue(floatingActionButtonSmallValue),
                ),
              ],
            ),
            Divider(
              thickness: 3,
              height: 20,
              color: Colors.grey[800],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _ButtonWrapper(
                    title: 'Popup Menu Button',
                    button: PopupMenuButton(
                      initialValue: popupMenuButtonValue,
                      onSelected: (value) => setState(() => popupMenuButtonValue = value),
                        itemBuilder: (context) => <PopupMenuItem>[
                          for(int i = 0; i < items.length; i++)
                            PopupMenuItem(value: items[i], child: Text('${i+1} - ${items[i]}')),
                        ],
                        child: const Text('Click Me')),
                    value: '$popupMenuButtonValue Selected'),

                _ButtonWrapper(title: 'Dropdown Menu Button', button: DropdownButton(selectedItemBuilder: (context) => const [Text('Selected One'), Text('one'), Text('two'), Text('Three'), Text('Four'), Text('Five'), Text('Six'), Text('Seven'),], value: dropdownButtonValue, items: [const DropdownMenuItem(value: 'None', child: Text('None')), for(int i = 0; i < items.length; i++) DropdownMenuItem(value: items[i], child: Text('${i+1} ${items[i]}'))], onChanged: (value) => setState(() => dropdownButtonValue = value!),), value: '$dropdownButtonValue Selected'),
                _ButtonWrapper(title: 'Submenu Button', button: SubmenuButton(menuChildren: [for(int i = 0; i < items.length; i++) Text('${i+1} - ${items[i]}')], child: const Text('Click Me')), value: ''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ButtonWrapper extends StatelessWidget {
  const _ButtonWrapper(
      {required this.title, required this.button, required this.value});
  final String title;
  final Widget button;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Theme.of(context).primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            button,
            const SizedBox(
              height: 5,
            ),
            Text(value)
          ],
        )),
      ),
    );
  }
}
