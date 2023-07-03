import 'package:flutter/material.dart';

class LoginScreenA extends StatelessWidget {
  const LoginScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.blue,
            height: 1.0,
          ),
        ),
      ),
    );
  }
}