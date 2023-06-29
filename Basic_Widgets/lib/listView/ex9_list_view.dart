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

class Ex9ListView extends StatefulWidget {
  const Ex9ListView({super.key});

  @override
  _Ex9ListViewState createState() => _Ex9ListViewState();
}

class _Ex9ListViewState extends State<Ex9ListView> {
  List<ListSection> sections = [];

  @override
  void initState() {
    super.initState();
    loadLists();
  }

  Future<void> loadLists() async {
    final json1 = await rootBundle.loadString('assets/json/animals.json');
    final jsonData1 = json.decode(json1);
    final items1 = (jsonData1 as List<dynamic>)
        .map(
          (item) => ListItem(
            title: item['animal'],
          ),
        )
        .toList();
    final section1 = ListSection(sectionTitle: 'Gia súc', items: items1);

    final json2 = await rootBundle.loadString('assets/json/furniture.json');
    final jsonData2 = json.decode(json2);
    final items2 = (jsonData2 as List<dynamic>)
        .map(
          (item) => ListItem(
            title: item['furniture'],
          ),
        )
        .toList();
    final section2 = ListSection(sectionTitle: 'Đồ vật', items: items2);

    setState(() {
      sections = [
        section1,
        section2,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SECTIONS',
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
                padding: EdgeInsets.only(left: 15),
                width: 400,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Text(
                  section.sectionTitle,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: section.items.length,
                itemBuilder: (context, itemIndex) {
                  final item = section.items[itemIndex];
                  return ListTile(
                    leading: Image(
                      image: AssetImage('assets/images/img_profile.png'),
                      width: 60,
                      height: 50,
                    ),
                    title: Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'sub title',
                      style: TextStyle(color: Colors.black),
                    ),
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
