import 'package:flutter/material.dart';

Widget SelectedImage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        width: 394,
        height: 375,
        image: AssetImage('assets/images/5.png'),
      ),
    ),
  );
}
