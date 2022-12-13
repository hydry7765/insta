import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/empty_space_widget.dart';
import 'package:instagram/widgets/post_header.dart';
import 'package:instagram/widgets/post_post.dart';
import 'package:instagram/widgets/profile.dart';

Widget Post(BuildContext mainContext) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HeaderPost(),
          getPost(mainContext),
          EmptySpace(24),
        ],
      ),
    ),
  );
}
