import 'package:flutter/material.dart';
import 'package:instagram/widgets/elvated_button.dart';
import 'package:instagram/widgets/empty_space_widget.dart';

import 'package:instagram/widgets/login_image.dart';
import 'package:instagram/widgets/spalsh_logo.dart';
import 'package:instagram/widgets/splash_footer.dart';
import 'package:instagram/widgets/splash_patern.dart';
import 'package:instagram/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode myFocusNode = FocusNode();
  FocusNode myFocusNode1 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode1.addListener(() {
      setState(() {});
    });
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          getImageLogin(),
          Column(
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
                  child: SingleChildScrollView(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 44, vertical: 20),
                          child: SizedBox(
                            height: 58,
                            child: TextField(
                              focusNode: myFocusNode,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
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
                                label: Text('Email'),
                                labelStyle: TextStyle(
                                    fontSize: 20,
                                    color: myFocusNode.hasFocus
                                        ? Color(0xffF35383)
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 44),
                          child: SizedBox(
                            height: 68,
                            child: TextField(
                              focusNode: myFocusNode1,
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
                                  label: Text('Password'),
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                    color: myFocusNode1.hasFocus
                                        ? Color(0xffF35383)
                                        : Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        ElvatedButton(text: 'Sign in'),
                        EmptySpace(50),
                        TextP(
                          title: 'Dont have an account? / Sign up',
                          isBold: true,
                          txtcolor: Color(0xffffffffff),
                          fontsize: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myFocusNode.dispose();
    myFocusNode1.dispose();
    super.dispose();
  }
}
