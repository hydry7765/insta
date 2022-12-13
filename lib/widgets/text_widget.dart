import 'package:flutter/material.dart';

Widget TextP(
    {String title = '',
    Color txtcolor = Colors.white,
    bool isBold = true,
    double fontsize = 16}) {
  return Text(
    '${title}',
    style: TextStyle(
        color: txtcolor,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontSize: fontsize),
  );
}
