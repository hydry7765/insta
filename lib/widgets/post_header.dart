import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_avatar.dart';
import 'package:instagram/widgets/post_infoacc.dart';

Widget HeaderPost() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      getAvatar(),
      SizedBox(
        width: 12,
      ),
      getInfoAcc(),
      Spacer(),
      Icon(
        Icons.more_vert_sharp,
        color: Colors.white,
        size: 30,
      )
    ],
  );
}
