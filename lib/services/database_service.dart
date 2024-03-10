//package
import 'package:cloud_firestore/cloud_firestore.dart';

const String _USER_COLLECTION = "Users";
const String _CHAT_COLLECTION = "Chats";
const String _MESSAGE_COLLECTION = "Messages";

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DatabaseService();
}
