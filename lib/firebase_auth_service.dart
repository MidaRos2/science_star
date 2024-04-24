import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String Password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: Password);
      return credential.user;
    } catch (e) {
      print("Some error accured");
    }
    return null;
  }

  Future<User?> signIpWithEmailAndPassword(
      String email, String Password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: Password);
      return credential.user;
    } catch (e) {
      print("Some error accured");
    }
    return null;
  }
}
