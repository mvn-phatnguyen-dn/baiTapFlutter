import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class ListItem {
  final String title;

  ListItem({required this.title});
}

class ListSection {
  final String sectionTitle;
  final List<ListItem> items;

  ListSection({required this.sectionTitle, required this.items});
}

class Ex4ListView extends StatefulWidget {
  const Ex4ListView({Key? key}) : super(key: key);

  @override
  _Ex4ListViewState createState() => _Ex4ListViewState();
}

class _Ex4ListViewState extends State<Ex4ListView> {
  List<ListSection> sections = [];

  @override
  void initState() {
    super.initState();
    loadLists();
  }

  Future<void> loadLists() async {
    final json1 = await rootBundle.loadString('assets/json/food.json');
    final jsonData1 = json.decode(json1);
    final items1 = (jsonData1 as List<dynamic>)
        .map(
          (item) => ListItem(
            title: item['food'],
          ),
        )
        .toList();
    final section1 = ListSection(sectionTitle: '   Section 0', items: items1);

    final json2 = await rootBundle.loadString('assets/json/animals.json');
    final jsonData2 = json.decode(json2);
    final items2 = (jsonData2 as List<dynamic>)
        .map(
          (item) => ListItem(
            title: item['animal'],
          ),
        )
        .toList();
    final section2 = ListSection(sectionTitle: '   Section 1', items: items2);

    final json3 = await rootBundle.loadString('assets/json/furniture.json');
    final jsonData3 = json.decode(json3);
    final items3 = (jsonData3 as List<dynamic>)
        .map(
          (item) => ListItem(
            title: item['furniture'],
          ),
        )
        .toList();
    final section3 = ListSection(sectionTitle: '   Section 2', items: items3);

    setState(() {
      sections = [section1, section2, section3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SECTIONS',
          style: TextStyle(color: Colors.black),
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
        itemCount: sections.length,
        itemBuilder: (context, sectionIndex) {
          final section = sections[sectionIndex];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Text(
                  section.sectionTitle,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: section.items.length,
                itemBuilder: (context, itemIndex) {
                  final item = section.items[itemIndex];
                  return ListTile(
                    title: Text(item.title),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
