import 'package:flutter/material.dart';

Widget AccountBox() {
  return Container(
    height: 90,
    decoration: BoxDecoration(
      color: Color(0xff1C1F2E),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 18,
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffF35383), width: 2),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: EdgeInsets.all(3),
            child: Image(image: AssetImage('assets/images/accprofile.png')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'AmirAhmadAdibi',
                style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
                    fontSize: 12),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    color: Color(
                      0xffC5C5C5,
                    ),
                    fontSize: 12),
              ),
            ],
          ),
        ),
        Spacer(),
        Icon(
          Icons.edit,
          color: Colors.white,
        ),
        SizedBox(
          width: 19,
        )
      ],
    ),
  );
}
