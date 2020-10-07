import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/authentication/firebase/firebase_auth.dart';
import 'package:foodorder/authentication/firebase/firebaseuser.dart';
import 'package:foodorder/authentication/log_in_page.dart';
import 'package:foodorder/authentication/log_reg.dart';
import 'package:foodorder/home/mainPage.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    if (user == null) {
      return LogRegToggle();
    } else {
      return MainPage();
    }
  }
}
