import 'package:flutter/material.dart';
import '../ex2/profile_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';
import 'map_screen.dart';

class Ex1BottomNavigationBar extends StatefulWidget {
  const Ex1BottomNavigationBar({super.key});

  @override
  State<Ex1BottomNavigationBar> createState() => _Ex1BottomNavigationBarState();
}

class _Ex1BottomNavigationBarState extends State<Ex1BottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreenA(),
    MapScreenA(),
    FavoritesScreenA(),
    ProfileScreenA(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
      body: _screens[_currentIndex],
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 0,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map),
                  label: 'Map',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_4),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
