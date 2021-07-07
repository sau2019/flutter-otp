import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  Future<void> updateUserData(
      String email, String password, String authToken) async {
    return await userCollection.doc(uid).set({
      'Email': email,
      'Password': password,
      'AuthToken': authToken,
    });
  }
}
