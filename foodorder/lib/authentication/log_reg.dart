import 'package:flutter/material.dart';
import 'package:foodorder/authentication/log_in_page.dart';
import 'package:foodorder/authentication/registration_information/signup.dart';

class LogRegToggle extends StatefulWidget {
  @override
  _LogRegToggleState createState() => _LogRegToggleState();
}

class _LogRegToggleState extends State<LogRegToggle> {
  bool toggle = true;
  void toogleMethod() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (toggle) {
      return LogIn(toggleMethod: toogleMethod);
    } else {
      return SignUp(toogleMethod: toogleMethod);
    }
  }
}
