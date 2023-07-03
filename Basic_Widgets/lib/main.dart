import 'package:flutter/material.dart';
import 'navigation/screen_routes.dart';
import 'navigation/screens/screen_A.dart';
import 'navigation/screens/screen_C.dart';
import 'navigation/screens/screen_D.dart';
import 'navigation/screens/screen_E.dart';
import 'navigation/screens/screen_edit.dart';
import 'navigation/screens/screen_home.dart';
import 'navigation/screens/screen_profile.dart';
import 'navigation/screens/screen_profile_home.dart';

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
          // Ex6MonkeyPage(),
          // Ex8MonkeyApp(),
          // const ScreenA(),
          // const LoginScreen(),
          const ProfileListScreen(),
      // GradientAppBarScreen(),
      // NewsfeedAppBarScreen(),
      // CustomNavigationApp(),
      // BarButtonTestScreen(),
      // ButtonsAppBarScreen(),

      routes: {
        ScreenRoutes.screenA: (context) => const ScreenA(),
        ScreenRoutes.screenB: (context) => const ScreenA(),
        ScreenRoutes.screenC: (context) => const ScreenC(),
        ScreenRoutes.screenD: (context) => const ScreenD(),
        ScreenRoutes.screenE: (context) => const ScreenE(),
        ScreenRoutes.screenEdit: (context) => EditScreen(),
        ScreenRoutes.screenHome: (context) => const HomeScreen(username: ''),
        ScreenRoutes.screenProfile: (context) => const ProfileScreen(),
        ScreenRoutes.screenHomeProfileList: (context) =>
            const ProfileListScreen(),
      },
    );
  }
}
