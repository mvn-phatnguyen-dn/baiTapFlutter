import 'package:flutter/material.dart';

import '../components/elevatedButton.dart';
import '../screen_routes.dart';

class ScreenE extends StatelessWidget {
  const ScreenE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen E'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              onPressed: () => Navigator.popUntil(
                context,
                ModalRoute.withName(ScreenRoutes.screenC),
              ),
              text: 'C',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.popUntil(
                context,
                ModalRoute.withName(ScreenRoutes.screenB),
              ),
              text: 'B',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.pop(context),
              text: 'D',
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
