import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodorder/model/foodmodel.dart';

class FireStoreServices {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('foodcart');

  List<Foodmodel> _foodmodel(QuerySnapshot snapshot) {
    return snapshot.documents.map((e) {
      return Foodmodel(name: e.data()['name'],
      img: e.data()['img']);
    }).toList();
  }

  Stream<List<Foodmodel>> get foodData {
    return users.snapshots().map(_foodmodel);
  }
}
