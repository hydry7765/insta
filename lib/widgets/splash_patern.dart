import 'package:flutter/material.dart';

BoxDecoration SplashPatern() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/pattern1.png'),
      repeat: ImageRepeat.repeat,
    ),
  );
}
