import 'package:flutter/material.dart';

class TableWidgetExample extends StatelessWidget {
  const TableWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Table(
        border: TableBorder.all(width: 2.0, borderRadius: BorderRadius.circular(3.0)),
        children: [
          TableRow(children: [
           buildTableHeading(value: 'First Name'),
            buildTableHeading(value: 'Second Name'),
            buildTableHeading(value: 'Email'),
          ]),

          TableRow(children: [
            buildTableData(value: 'Mbah'),
            buildTableData(value: 'Lesky'),
            buildTableData(value: 'mbahlesky2@gmail.com'),
          ],),

          TableRow(children: [
            buildTableData(value: 'Lespa'),
            buildTableData(value: 'Khing'),
            buildTableData(value: 'lespakhing@gmail.com'),
          ],),

          TableRow(children: [
            buildTableData(value: 'Elkay'),
            buildTableData(value: 'Lespa'),
            buildTableData(value: 'elkaylespa@gmail.com'),
          ],),
        ],
      ),
    );
  }

  TableCell buildTableHeading({String value = ''}){
    return TableCell(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
    ),
    );
  }

  TableCell buildTableData({String value = ''}){
    return TableCell(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(value, style: const TextStyle(fontSize: 11.0),),
    ),
    );
  }
}
