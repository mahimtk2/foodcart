import 'package:flutter/material.dart';
import 'package:foodorder/authentication/log_in_page.dart';
import 'package:foodorder/authentication/log_reg.dart';
import 'package:foodorder/authentication/registration_information/signup.dart';
import 'package:foodorder/authentication/wrapper.dart';
import 'package:foodorder/home/mainPage.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          value.endsWith(pages.last.toString());
        },
        getStartedClicked: (value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Wrapper()));
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Best Deishes',
        description:
            'Easily find your grocery items and you will get delivery in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/img1.PNG'),
    SkOnboardingModel(
        title: 'Cheap Price',
        description:
            'Easily find your grocery items and you will get delivery in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/im2.PNG'),
    SkOnboardingModel(
        title: 'Perfect Serving',
        description: 'Pay for order using credit or debit card',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/img3.PNG'),
    SkOnboardingModel(
        title: 'Relexed Atmosphere',
        description: 'Pay for order using credit or debit card',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/img4.PNG'),
  ];
}
