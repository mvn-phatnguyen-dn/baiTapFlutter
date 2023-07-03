import 'package:flutter/material.dart';

class GradientAppBarScreen extends StatelessWidget {
  const GradientAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient NavigationBar'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 223, 27, 12),
                Color.fromARGB(255, 9, 26, 205)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
