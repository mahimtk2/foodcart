import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/authentication/firebase/firebase_auth.dart';
import 'package:foodorder/food_data/firestore.dart';
import 'package:foodorder/home/foodata.dart';
import 'package:foodorder/model/foodmodel.dart';
import 'package:provider/provider.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    AuthenticationFirebase _auth = AuthenticationFirebase();
    return StreamProvider<List<Foodmodel>>.value(
      value: FireStoreServices().foodData,
          child: Scaffold(
           // resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('Home')),
        body: Food()
      ),
    );
  }
}
