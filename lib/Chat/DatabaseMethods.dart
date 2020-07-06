import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseMethods{
  final _firestore = Firestore.instance;
  void addMessage (String groupId ,String subGroupId, String messageText , String userEmail , Timestamp timestamp) {
    _firestore.collection('messages').document(groupId)
        .collection(subGroupId)
        .add({
      'text': messageText,
      'sender': userEmail,
      'timestamp' : timestamp,
    });
  }
    Stream<QuerySnapshot> getChatRoomMessages (String groupId ,String subGroupId){
     return  _firestore.collection('messages').document(groupId).collection(subGroupId).orderBy("timestamp").snapshots();
  }

}
