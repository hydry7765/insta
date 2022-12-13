import 'package:flutter/material.dart';

Widget getImageLogin() {
  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    top: 80.0,
    child: Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('assets/images/rocket.png'),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    ),
  );
}
