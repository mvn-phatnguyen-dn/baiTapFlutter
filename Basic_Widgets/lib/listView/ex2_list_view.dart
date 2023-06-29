import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Ex2ListView extends StatefulWidget {
  const Ex2ListView({super.key});

  @override
  _Ex2ListViewState createState() => _Ex2ListViewState();
}

class _Ex2ListViewState extends State<Ex2ListView> {
  List<dynamic> names = [];

  @override
  void initState() {
    super.initState();
    loadNames();
  }

  Future<void> loadNames() async {
    final jsonString = await rootBundle.loadString('assets/json/names.json');
    final jsonData = json.decode(jsonString);
    setState(
      () {
        names = jsonData;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color.fromARGB(255, 79, 71, 71),
            height: 1.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]['name']),
          );
        },
      ),
    );
  }
}
