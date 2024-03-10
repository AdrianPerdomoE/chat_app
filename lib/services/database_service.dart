//package
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: constant_identifier_names
const String _USER_COLLECTION = "Users";
const String _CHAT_COLLECTION = "Chats";
const String _MESSAGE_COLLECTION = "Messages";

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DatabaseService();
  Future<DocumentSnapshot> getUser(String uid) async {
    return _db.collection(_USER_COLLECTION).doc(uid).get();
  }

  Future<void> updateUserLastSeenTime(String uid) async {
    try {
      await _db.collection(_USER_COLLECTION).doc(uid).update({
        "last_active": DateTime.now().toUtc(),
      });
    } catch (e) {
      print(e);
    }
  }
}
