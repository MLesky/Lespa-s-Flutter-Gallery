import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mg;

class MongoDbView extends StatefulWidget {
  const MongoDbView({Key? key}) : super(key: key);

  @override
  State<MongoDbView> createState() => _MongoDbViewState();
}

class _MongoDbViewState extends State<MongoDbView> {
  late mg.Db database;
  List<Map<String, dynamic>> students = [];

  @override
  void initState() {
    super.initState();
    startDB();
  }

  Future<void> startDB() async {
    database = mg.Db("mongodb://localhost:27017/School");
    await database.open();
    print('Mongo DB running');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            for (final student in students)
              Padding(
                padding: const EdgeInsets.all(12),
                child: Card(
                  child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(student.toString())),
                ),
              )
          ],
        ));
  }
}
