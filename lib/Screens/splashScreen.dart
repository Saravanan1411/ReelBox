import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


import '/Screens/login.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/splashImage.gif"),
            fit: BoxFit.contain
          )
        ),
      ),
      nextScreen: const Login(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 2000,
    );
  }
}
