import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'ex3_list_view_detail_screen.dart';

class Ex5ListView extends StatefulWidget {
  const Ex5ListView({super.key});

  @override
  _Ex5ListViewState createState() => _Ex5ListViewState();
}

class _Ex5ListViewState extends State<Ex5ListView> {
  var searchInputController = TextEditingController();
  List<dynamic> names = [];
  List<dynamic> filteredNames = [];

  @override
  void initState() {
    super.initState();
    loadNames();
  }

  Future<void> loadNames() async {
    final jsonString = await rootBundle.loadString('assets/json/names.json');
    final jsonData = json.decode(jsonString);
    setState(() {
      searchInputController.text = '';
      names = jsonData;
      filteredNames = jsonData;
    });
  }

  void filterNames(String keyword) {
    setState(() {
      filteredNames = names.where((name) {
        final nameString = name['name'].toString();
        final keywordString = keyword;
        return nameString.contains(keywordString);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color.fromARGB(255, 79, 71, 71),
            height: 0.5,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              filterNames(value);
            },
            controller: searchInputController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredNames.length,
              itemBuilder: (context, index) {
                final name = filteredNames[index]['name'];
                return ListTile(
                  title: Text(name),
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(name: name),
                      ),
                    );
                    loadNames();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
