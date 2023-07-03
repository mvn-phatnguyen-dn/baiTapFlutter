import 'package:flutter/material.dart';

import '../components/elevatedButton.dart';

class User {
  final String name;
  final Image avatar;

  const User({required this.name, required this.avatar});
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User user;

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profiles',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CustomElevatedButton(
            onPressed: () => Navigator.pop(context),
            text: 'Done',
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 7, 35, 58),
              fontSize: 18,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: Image(
                image: user.avatar.image,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
