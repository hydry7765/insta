import 'package:flutter/material.dart';
import 'package:instagram/widgets/elvated_button.dart';
import 'package:instagram/widgets/spalsh_logo.dart';
import 'package:instagram/widgets/splash_footer.dart';
import 'package:instagram/widgets/splash_patern.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //set patern
      decoration: SplashPatern(),
      child: Scaffold(
        //set background for visible patern
        backgroundColor: Colors.transparent,
        body: Stack(
          //for start from bottom
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            //set logo
            SplashLogo(),

            //set footer
            splashFooter(),
          ],
        ),
      ),
    );
  }
}
