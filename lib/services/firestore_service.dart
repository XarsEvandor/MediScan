import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/user_model.dart';

class FirestoreService {
  static Future<User?> getUserById(String id) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()
        .then((doc) => User.fromDocument(doc));
  }

  static Future<List<User>> getAllUsers() {
    return FirebaseFirestore.instance.collection('users').get().then((querySnapshot) {
      final users = <User>[];
      querySnapshot.docs.forEach((doc) {
        final user = User.fromDocument(doc);
        if (user != null) {
          users.add(user);
        }
      });
      return users;
    });
  }

  static Future<String> createUser(User user) async {
    final data = user.toMap();
    final docRef = await FirebaseFirestore.instance.collection('users').add(data);
    return docRef.id;
  }

  static Future<void> updateUser(User user) async {
    await FirebaseFirestore.instance.collection('users')
        .doc(user.id)
        .update(user.toMap());
  }

  static Future<void> deleteById(String id) async {
    final user = await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }
}
