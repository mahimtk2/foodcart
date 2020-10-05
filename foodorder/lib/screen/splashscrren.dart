import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Center(
            child: Container(
              color: Colors.blueAccent,
              height: 100,
              width: 100,
              child: Center(),
            ),
          )
        ],
      ),
    );
  }
}
