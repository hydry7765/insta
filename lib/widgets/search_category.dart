import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/text_widget.dart';

List<String> myList = [
  '#Football',
  '#Flutter',
  '#Cat',
  '#Developers',
  '#Ronaldo',
  '#Iran',
  '#Womens',
  '#PersianCat'
];
Widget CategorysList() {
  return SizedBox(
    height: 23,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return CategoryBox(index);
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15,
          );
        },
      ),
    ),
  );
}

Widget CategoryBox(int number) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(0xff272B40),
    ),
    child: Center(
        child: TextP(
      txtcolor: Colors.white,
      fontsize: 10,
      title: myList[number],
    ),),
  );
}
