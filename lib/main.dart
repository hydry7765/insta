import 'package:flutter/material.dart';
import 'package:instagram/screens/add_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/main_screen.dart';
import 'package:instagram/screens/notifications_screen.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/splash_screen.dart';
import 'package:instagram/screens/switch_account_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'geb'),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
