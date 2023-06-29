import 'package:flutter/material.dart';

class Ex1ListView extends StatelessWidget {
  const Ex1ListView({super.key});

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
      body: ListView(
        children: [
          for (int i = 0; i <= 10; i++)
            ListTile(
              title: Text(
                'Name $i',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
