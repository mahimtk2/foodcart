import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/authentication/firebase/firebase_auth.dart';
import 'package:foodorder/authentication/log_in_page.dart';
import 'package:foodorder/authentication/log_reg.dart';
import 'package:foodorder/home/mainPage.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  firebase() async {
    FirebaseAuth auth = await FirebaseAuth.instance;
    return auth;
  }

  Widget build(BuildContext context) {
    print(firebase.toString());
    if (firebase == null) {
      return LogRegToggle();
    } else {
      return MainPage();
    }
  }
}
