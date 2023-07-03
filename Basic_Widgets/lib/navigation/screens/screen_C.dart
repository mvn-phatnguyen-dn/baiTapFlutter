import 'package:flutter/material.dart';
import 'package:my_app/navigation/screens/screen_D.dart';

import '../components/elevatedButton.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenD()),
              ),
              text: 'Next',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.pop(context),
              text: 'Pre',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, (route) => route.isFirst),
              text: 'Root',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
