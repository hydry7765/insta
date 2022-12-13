import 'package:flutter/material.dart';

Widget getAvatar() {
  return Container(
    width: 44,
    height: 44,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.pink,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.all(2),
      child: Image(
        image: AssetImage('assets/images/accprofile.png'),
      ),
    ),
  );
}
