import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Ex2GridView extends StatefulWidget {
  const Ex2GridView({super.key});

  @override
  State<Ex2GridView> createState() => _Ex2GridViewState();
}

class _Ex2GridViewState extends State<Ex2GridView> {
  final List<Map<String, dynamic>> _items = List.generate(
      200,
      (index) => {
            "id": index,
            "height": Random().nextInt(150) + 50.5
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.count(
        itemCount: _items.length,
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        itemBuilder: (context, index) {
           return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Color.fromARGB(255, 17, 106, 179),
                width: 1.0,
              ),
            ),
            child: SizedBox(
              height: _items[index]['height'],
            ),
          );
        },
      ),
    );
  }
}
