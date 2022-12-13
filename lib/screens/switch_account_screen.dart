import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/widgets/switch_box.dart';
import 'package:instagram/widgets/switch_decoration.dart';
import 'package:instagram/widgets/switch_footer.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              //set decoration for wallpaper
              decoration: SwitchDecoration(),
              child: Center(
                //set blured box
                child: SwitchBox(),
              ),
            ),
          ),
          //set footer of page
          SwitchFooter(),
        ],
      ),
    );
  }
}
