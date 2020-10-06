import 'package:flutter/material.dart';
import 'package:foodorder/screen/loading_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
//import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Cart",
       home: SplashScreenView(
      home: HomePage(),
      duration: 5000,
      imageSize: 100,
      imageSrc: "assets/icon_logo.png",
      text: "Sing's Everythings ",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    ),
      ));
}
