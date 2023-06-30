import 'package:flutter/material.dart';

class Ex1GridView extends StatelessWidget {
  const Ex1GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 10,
        children: List.generate(
          80,
          (index) {
            return GridTile(
              child: Card(
                color: Color.fromARGB(255, 26, 6, 178),
                child: Center(
                  child: Text(
                    '$index',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
