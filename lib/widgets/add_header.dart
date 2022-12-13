import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_widget.dart';

Widget Header() {
  return Row(
    children: [
      TextP(
        title: 'Post',
        fontsize: 16,
      ),
      SizedBox(
        width: 10,
      ),
      Image(
        image: AssetImage('assets/images/select.png'),
      ),
      Spacer(),
      TextP(
        title: 'Next',
        fontsize: 16,
      ),
      SizedBox(
        width: 10,
      ),
      Image(
        image: AssetImage('assets/images/next.png'),
      ),
    ],
  );
}
