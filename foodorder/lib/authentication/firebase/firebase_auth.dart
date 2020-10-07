import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodorder/authentication/firebase/firebaseuser.dart';

class AuthenticationFirebase {
  FirebaseAuth _auth = FirebaseAuth.instance;

  UserModel ourCustom(User user) {
    if (user != null) {
      return UserModel(id: user.uid);
    } else {
      return null;
    }
  }

  Stream<UserModel> get firebaseUser {
    return _auth.authStateChanges().map(ourCustom);
  }

  Future createUseremailPass(var email, var password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return ourCustom(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailPass(var email, var password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return ourCustom(user);
    } catch (e) {
      print(e.toString());

      return null;
    }
  }

  Future signAnnon() async {
    UserCredential result = await _auth.signInAnonymously();
    User user = result.user;
    return ourCustom(user);
  }

  Future signOut() async {
    await _auth.signOut();
  }
}
