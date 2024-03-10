class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageURL;
  final DateTime lastActive;

  ChatUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.imageURL,
    required this.lastActive,
  });
  factory ChatUser.fromJSON(Map<String, dynamic> json) {
    return ChatUser(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      imageURL: json['image'],
      lastActive: json['last_active'].toDate(),
    );
  }
  Map<String, dynamic> toJSON() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'image': imageURL,
      'last_active': lastActive,
    };
  }

  String lastDayActive() {
    return "${lastActive.day}/${lastActive.month}/${lastActive.year} ";
  }

  bool wasRecentlyActive() {
    final now = DateTime.now();
    final difference = now.difference(lastActive).inHours;
    return difference < 2;
  }
}
