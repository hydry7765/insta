import 'package:flutter/material.dart';

Widget SplashLogo() {
  return Padding(
    padding: const EdgeInsets.all(150),
    child: Center(
      child: Image(
        image: AssetImage('assets/images/Startlogo.png'),
      ),
    ),
  );
}
