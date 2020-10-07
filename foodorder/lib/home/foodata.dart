import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodorder/model/foodmodel.dart';
import 'package:provider/provider.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    final _food = Provider.of<List<Foodmodel>>(context);

    return ListView.builder(
      itemCount: _food.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(_food[index].img)
          
        );
      },
    );
  }
}
