import 'package:flutter/material.dart';
import 'package:foodorder/screen/loading_screen.dart';
import 'package:foodorder/screen/splashscrren.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: CircleAvatar(
            //child: Image.asset("images/icon_logo.png"),
            radius:50,
            backgroundImage: AssetImage('images/icon_logo.png'),
            backgroundColor: Colors.blue,
          ),
          nextScreen: OnBoardingPage(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.red)));
}
