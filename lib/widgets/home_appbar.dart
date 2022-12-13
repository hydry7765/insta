import 'package:flutter/material.dart';

AppBar getAppBar() {
  return AppBar(
    backgroundColor: Color(0xff1C1F2E),
    elevation: 0,
    centerTitle: false,
    title: Padding(
      padding: EdgeInsets.only(left: 17.0),
      child: Image(
        width: 128,
        height: 160,
        image: AssetImage(
          'assets/images/logo1.png',
        ),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 26),
        child: Image(
          image: AssetImage(
            'assets/images/direct.png',
          ),
        ),
      ),
    ],
  );
}
