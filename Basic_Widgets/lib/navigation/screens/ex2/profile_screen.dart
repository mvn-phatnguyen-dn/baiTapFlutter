import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreenA extends StatelessWidget {
  const ProfileScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Profile Screen'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => LoginScreen1(),
                ),
                (route) => false,
              );
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
