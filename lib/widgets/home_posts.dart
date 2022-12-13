import 'package:flutter/material.dart';
import 'package:instagram/widgets/post.dart';

Widget Posts() {
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: 10,
    itemBuilder: (context, index) {
      return Post(context);
    },
  );
}
