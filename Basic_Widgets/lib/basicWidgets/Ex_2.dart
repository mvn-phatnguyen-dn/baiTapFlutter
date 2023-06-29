import 'package:flutter/material.dart';
import './Ex_1.dart';

final List<User> profiles = [
  User(name: 'Name 1', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 2', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 3', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 4', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 5', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 6', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 7', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 8', avatar: Image.asset('assets/images/img_profile.png')),
  User(name: 'Name 9', avatar: Image.asset('assets/images/img_profile.png')),
];

class Ex2ProfileList extends StatefulWidget {
  const Ex2ProfileList({super.key});

  @override
  _Ex2ProfileListState createState() => _Ex2ProfileListState();
}

class _Ex2ProfileListState extends State<Ex2ProfileList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        childAspectRatio: 0.8,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(10, 120, 10, 10),
        children: List.generate(
          profiles.length,
          (index) => GestureDetector(
            onTap: () {
              print(profiles[index]);
            },
            child: const Profile(),
          ),
        ),
      ),
    );
  }
}
