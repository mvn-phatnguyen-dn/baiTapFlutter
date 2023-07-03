import 'package:flutter/material.dart';
import '../../basicWidgets/Ex_1.dart';
import '../screen_routes.dart';

class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              for (int x = 1; x <= 39; x++)
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ScreenRoutes.screenProfile,
                      arguments: User(
                        name: 'Name $x',
                        avatar: Image.asset('assets/images/img_profile.png'),
                      ),
                    );
                  },
                  child: UserWidget(
                    username: 'Name $x',
                    avatar: 'assets/images/img_profile.png',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserWidget extends StatefulWidget {
  final String username;
  final String avatar;

  const UserWidget({super.key, required this.username, required this.avatar});

  @override
  State<UserWidget> createState() {
    return _UserWidgetState();
  }
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: (widthScreen - 56) / 3,
          height: (widthScreen - 56) / 3,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(widget.avatar),
          ),
        ),
        SizedBox(
          width: (widthScreen - 56) / 3,
          height: widthScreen / 25,
          child: Container(
            color: Colors.blue,
            child: Text(
              widget.username,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
