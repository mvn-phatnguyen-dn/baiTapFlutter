import 'package:flutter/material.dart';

import '../components/elevatedButton.dart';
import '../screen_routes.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ScreenRoutes.screenC),
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
          ],
        ),
      ),
    );
  }
}
