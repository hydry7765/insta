import 'package:flutter/material.dart';

Widget SearchBox() {
  return Container(
    width: 396,
    height: 46,
    margin: EdgeInsets.symmetric(horizontal: 17, vertical: 22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17),
      color: Color(0xff272B40),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Image.asset('assets/images/search.png'),
        SizedBox(
          width: 11,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: 'Serach ...',
                hintStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        Image.asset('assets/images/scan.png'),
        SizedBox(
          width: 15,
        )
      ],
    ),
  );
}
