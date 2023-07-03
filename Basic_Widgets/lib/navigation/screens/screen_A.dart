import 'package:flutter/material.dart';

import '../components/elevatedButton.dart';
import '../screen_routes.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
      ),
      body: Center(
        child: CustomElevatedButton(
          onPressed: () => Navigator.pushNamed(context, ScreenRoutes.screenB),
          text: 'Next',
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
