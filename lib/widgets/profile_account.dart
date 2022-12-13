import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/text_widget.dart';

Widget AccountInfo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
    child: Container(
      height: 70,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF35383), width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image(
                    image: AssetImage('assets/images/12.png'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextP(
                  title: 'mahdi_heydari',
                  isBold: false,
                  fontsize: 12,
                ),
                EmptySpace(5),
                TextP(
                  title: 'Flutter Developer',
                  isBold: false,
                  fontsize: 12,
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset('assets/images/menuicon.png'),
        ],
      ),
    ),
  );
}
