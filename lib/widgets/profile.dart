import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';

Widget getProfile({double w = 64, double h = 64}) {
  return Column(
    children: [
      Container(
        width: w,
        height: h,
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
      ),
      EmptySpace(2),
      Text(
        'adibi_fans',
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
      )
    ],
  );
}
