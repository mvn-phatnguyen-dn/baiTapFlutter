import 'package:flutter/material.dart';
import '../components/elevatedButton.dart';
import '../components/textField.dart';

class EditScreen extends StatelessWidget {
  EditScreen({super.key});

  final _usernameController = TextEditingController();
  final _newpasswordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              onPressed: () => Navigator.pop(context),
              text: 'Cancel',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Text('Edit'),
            CustomElevatedButton(
              onPressed: () => Navigator.pop(
                context,
                _usernameController.text,
              ),
              text: 'Done',
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              obscureText: false,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: _newpasswordController,
              decoration: const InputDecoration(
                hintText: 'new password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: _confirmpasswordController,
              decoration: const InputDecoration(
                hintText: 'confirm password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
