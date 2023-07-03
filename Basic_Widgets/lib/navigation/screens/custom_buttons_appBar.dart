import 'package:flutter/material.dart';

class ButtonsAppBarScreen extends StatelessWidget {
  const ButtonsAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 110,
        leading: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
            foregroundColor: Colors.blue,
            elevation: 0.0,
          ),
          child: Row(
            children: const [
              Icon(Icons.arrow_back_ios),
              Text(
                'Back',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue,
          size: 32,
        ),
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Mid1',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(width: 12),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Mid2',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(width: 46),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Right',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
