import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationFirebase {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future signAnnon() async {
    UserCredential result = await auth.signInAnonymously();
    FirebaseUser user = result.user;
    user.
  }
}
