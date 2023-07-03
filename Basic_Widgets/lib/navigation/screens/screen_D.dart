import 'package:flutter/material.dart';
import 'package:my_app/navigation/screens/screen_E.dart';
import '../components/elevatedButton.dart';
import '../screen_routes.dart';

class ScreenD extends StatelessWidget {
  const ScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen D'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenE()),
              ),
              text: 'Next',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.pop(context),
              text: 'C',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            CustomElevatedButton(
              onPressed: () => Navigator.popUntil(
                  context, ModalRoute.withName(ScreenRoutes.screenB)),
              text: 'B',
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
