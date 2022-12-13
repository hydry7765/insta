import 'package:flutter/material.dart';

Widget ElvatedButton({String text = ''}) {
  return SizedBox(
    width: 139.0,
    height: 56.0,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF35383),
        ),
        onPressed: () {},
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    ),
  );
}
