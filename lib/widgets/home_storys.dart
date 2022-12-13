import 'package:flutter/material.dart';
import 'package:instagram/widgets/home_addstory.dart';
import 'package:instagram/widgets/profile.dart';

Widget Storys() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: SizedBox(
      height: 110,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return index == 0 ? AddStory() : getProfile(w: 64, h: 64);
        },
      ),
    ),
  );
}
