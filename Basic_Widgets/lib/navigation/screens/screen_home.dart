import 'package:flutter/material.dart';

import '../components/elevatedButton.dart';
import 'screen_edit.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = '';

  @override
  void initState() {
    super.initState();
    name = widget.username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Logout',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Text('Home'),
            CustomElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditScreen(),
                  ),
                );
                setState(() {
                  name = result;
                });
              },
              text: 'Edit',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
