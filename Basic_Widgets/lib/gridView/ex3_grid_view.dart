import 'package:flutter/material.dart';

class ListItem {
  final String title;

  ListItem({required this.title});
}

class ListSection {
  final String sectionTitle;
  final List<ListItem> items;

  ListSection({required this.sectionTitle, required this.items});
}

class Ex3GridView extends StatefulWidget {
  const Ex3GridView({super.key});

  @override
  State<Ex3GridView> createState() => _Ex3GridViewState();
}

class _Ex3GridViewState extends State<Ex3GridView> {
  List<List<int>> data = [
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  ];

  List<ListSection> sections = [];

  @override
  void initState() {
    super.initState();
    loadLists();
  }

  Future<void> loadLists() async {
    final section1 = ListSection(sectionTitle: 'section 0', items: []);
    final section2 = ListSection(sectionTitle: 'section 1', items: []);
    final section3 = ListSection(sectionTitle: 'section 2', items: []);
    final section4 = ListSection(sectionTitle: 'section 3', items: []);
    final section5 = ListSection(sectionTitle: 'section 4', items: []);
    final section6 = ListSection(sectionTitle: 'section 5', items: []);
    final section7 = ListSection(sectionTitle: 'section 6', items: []);
    final section8 = ListSection(sectionTitle: 'section 7', items: []);

    for (int i = 0; i < data.length; i++) {
      for (int j = 0; j < data[i].length; j++) {
        final listItem = ListItem(title: data[i][j].toString());
        switch (i) {
          case 0:
            section1.items.add(listItem);
            break;
          case 1:
            section2.items.add(listItem);
            break;
          case 2:
            section3.items.add(listItem);
            break;
          case 3:
            section4.items.add(listItem);
            break;
          case 4:
            section5.items.add(listItem);
            break;
          case 5:
            section6.items.add(listItem);
            break;
          case 6:
            section7.items.add(listItem);
            break;
          case 7:
            section8.items.add(listItem);
            break;
        }
      }
    }

    setState(() {
      sections = [
        section1,
        section2,
        section3,
        section4,
        section5,
        section6,
        section7,
        section8
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, sectionIndex) {
          final section = sections[sectionIndex];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 232, 230, 247),
                width: 395,
                height: 30,
                padding: EdgeInsets.all(6),
                child: Text(
                  section.sectionTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  section.items.length,
                  (index) {
                    return Card(
                      color: Color.fromARGB(255, 182, 237, 237),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
