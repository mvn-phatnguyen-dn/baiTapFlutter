import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration decoration;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.decoration,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: decoration,
      obscureText: obscureText,
    );
  }
}
