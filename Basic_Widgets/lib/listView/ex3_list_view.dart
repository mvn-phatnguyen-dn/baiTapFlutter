import 'dart:convert';
import 'package:examle/ex3_list_view_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Ex3ListView extends StatefulWidget {
  const Ex3ListView({super.key});

  @override
  _Ex3ListViewState createState() => _Ex3ListViewState();
}

class _Ex3ListViewState extends State<Ex3ListView> {
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
        title: Text(
          'HOME',
          style:TextStyle(color: Colors.black),
        ),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(name: names[index]['name']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}