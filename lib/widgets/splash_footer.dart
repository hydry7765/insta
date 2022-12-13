import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_widget.dart';

Widget splashFooter() {
  return Positioned(
    //set for bottom and padding from bottom
    bottom: 32,
    child: Column(
      children: [
        TextP(
          title: 'From',
          fontsize: 17.0,
          isBold: true,
        ),
        TextP(
            title: 'Meta',
            txtcolor: Color(0xFF55B9F7),
            isBold: true,
            fontsize: 16)
      ],
    ),
  );
}
