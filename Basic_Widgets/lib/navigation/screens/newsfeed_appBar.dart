import 'package:flutter/material.dart';

class NewsfeedAppBarScreen extends StatelessWidget {
  const NewsfeedAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.blue, Color.fromARGB(255, 53, 57, 102)],
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 40,
            ),
            const Text(
              'News Feed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}
