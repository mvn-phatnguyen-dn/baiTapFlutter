import 'package:flutter/material.dart';

class User {
  final String name;
  final Image avatar;

  const User({required this.name, required this.avatar});
}

final user =
    User(name: 'Name 1', avatar: Image.asset('assets/images/img_profile.png'));

class Ex1Profile extends StatelessWidget {
  const Ex1Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 70, left: 20),
        width: 160,
        height: 300,
        child: const Profile(),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        child: Image(
          image: user.avatar.image,
        ),
      ),
      Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            user.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    ]);
  }
}
