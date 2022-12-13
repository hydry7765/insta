import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';

Widget getInfoAcc() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    textDirection: TextDirection.ltr,
    children: [
      Text(
        '@AmirAhmadAdibi',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      EmptySpace(5),
      Text(
        'Flutte Developer',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
