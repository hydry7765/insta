import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';

Widget getLoginContainer() {
  FocusNode myFoucose = new FocusNode();
  return Column(
    children: [
      Expanded(
        child: Container(),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Color(0xff1C1F2E),
          ),
          child: Column(
            children: [
              EmptySpace(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      'Sign in to',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Image(
                    width: 102,
                    height: 25,
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 48,
                  child: TextField(
                    focusNode: myFoucose,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: myFoucose.hasFocus ? Colors.pink : Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffC5C5C5),
                          width: 3,
                          strokeAlign: StrokeAlign.outside,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffF35383),
                          width: 3,
                          strokeAlign: StrokeAlign.outside,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 48,
                  child: TextField(
                    style: TextStyle(
                      color: Color(0xffC5C5C5),
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 3,
                          strokeAlign: StrokeAlign.outside,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffF35383),
                          width: 3,
                          strokeAlign: StrokeAlign.outside,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
