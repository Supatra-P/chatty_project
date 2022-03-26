//import 'package:chatty/screens/chatRoomsScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseMethods{
  getUserByUsername(String username) async {
    return await FirebaseFirestore.instance.collection("users")
    .where("name", isEqualTo: username )
    .get();
  }

  uploadUserInfo(userMap){
    FirebaseFirestore.instance.collection("users").add(userMap).catchError((e){
      print(e.toString());
    });
  }

  createChatroom(String chatRoomId, chatRoomMap){
    FirebaseFirestore.instance.collection("ChatRoom").doc(chatRoomId).set(chatRoomMap)
    .catchError((e){
      print(e.toString());
    });
  }
}