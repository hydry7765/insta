import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';

Widget AddStory() {
  return InkWell(
    onTap: () => print('clicked!'),
    child: Column(
      children: [
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 60,
              color: Color(0xffF35383),
            ),
          ),
        ),
        EmptySpace(2),
        Text(
          'Your Story',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
