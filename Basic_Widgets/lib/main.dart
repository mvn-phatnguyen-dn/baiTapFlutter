import 'package:flutter/material.dart';
// import 'Ex_1.dart';
// import 'Ex_2.dart';
// import 'Ex_3.dart';
// import 'Ex_4.dart';
import 'Ex_5.dart';
// import 'Ex_6.dart';
// import 'Ex_8.dart'; 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          // Ex1Profile(),
          // Ex2ProfileList(),
          // Ex3LoginPage(),
          // Ex4ColorSlider(),
          Ex5CustomSlider(),
          // Ex6MonkeyPage(),
          // Ex8MonkeyApp(),
    );
  }
}
