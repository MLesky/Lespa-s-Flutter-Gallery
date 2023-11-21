import 'package:flutter/material.dart';

import 'flutter_inputs.dart';

class FlutterPickerFields extends StatefulWidget {
  const FlutterPickerFields({Key? key}) : super(key: key);

  @override
  State<FlutterPickerFields> createState() => _FlutterInputFieldsState();
}

class _FlutterInputFieldsState extends State<FlutterPickerFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          buildSection(title: 'Date Picker Dialogs', children: [
            DatePickerDialog(
              initialDate: DateTime.now(),
              firstDate:
                  DateTime.now().subtract(const Duration(days: 365 * 20)),
              lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
              fieldLabelText: 'Date Picker',
              fieldHintText: 'Pick a date',
            ),
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate:
              DateTime.now().subtract(const Duration(days: 365 * 20)),
              lastDate: DateTime.now().add(const Duration(days: 365 * 2)),
              onDateChanged: (DateTime value) {},
            ),
            YearPicker(
              // initialDate: DateTime.now(),
              firstDate:
              DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 40)),
              selectedDate: DateTime.now(),
              onChanged: (DateTime value) {  },
            ),
            // DateRangePickerDialog(firstDate:
            // DateTime.now().subtract(const Duration(days: 365 * 20)),
            //   lastDate: DateTime.now().add(const Duration(days: 365 * 2)),),
            // TimePickerDialog(initialTime: TimeOfDay.now()),
            // InputDatePickerFormField(firstDate:
            // DateTime.now().subtract(const Duration(days: 365 * 20)),
            //   lastDate: DateTime.now().add(const Duration(days: 365 * 2)),)
          ]),
        ]));
  }

  Widget buildSection({String? title, required List<Widget> children}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                child: Column(
                  children: children,
                ),
              ),
              Text(
                title ?? '',
                textScaleFactor: 1.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
