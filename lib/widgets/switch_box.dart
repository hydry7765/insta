import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/elvated_button.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/text_widget.dart';

Widget SwitchBox() {
  return Padding(
    padding: const EdgeInsets.only(top: 150.0),
    child: ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          width: 340.0,
          height: 351.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(255, 255, 255, .5),
                Color.fromRGBO(255, 255, 255, .2),
              ],
            ),
          ),
          child: Column(
            children: [
              EmptySpace(30),
              Image(
                image: AssetImage(
                  'assets/images/accprofile.png',
                ),
              ),
              EmptySpace(20),
              TextP(fontsize: 22.0, isBold: false, title: 'mahdi_heydari'),
              EmptySpace(30),
              ElvatedButton(),
              EmptySpace(10),
              TextP(
                title: 'Switch Account',
                isBold: false,
                txtcolor: Colors.blue,
                fontsize: 17,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
