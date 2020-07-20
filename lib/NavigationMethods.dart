import 'package:flutter/material.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/Chat/chatRoom.dart';
import 'package:EventOut/MainPage/MainBody.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'package:EventOut/constants/constants.dart';

Future navigateToProfileCompleter(context) async {
  Navigator.pushNamed(context, ProfileCompleter.id);
}

Future navigateToClubList(context) async {
  Navigator.pushNamed(context, ClubList.id);
}

Future navigateToContactList(context) async {
  Navigator.pushNamed(context, ContactList.id);
}

// Future navigateToMainBody(context ) async {
//   Navigator.pushNamed(context, MainBody.id );
// }
Future navigateToGoogleorEmail(context) async {
  Navigator.pushNamed(context, Googleoremail.id);
}

Future navigateToLogin(context) async {
  Navigator.pushNamed(context, Login.id);
}
<<<<<<< HEAD

Future navigateToChatRoom(
    {context, String group, String subGroupId, ChatType type}) async {
  Navigator.pushNamed(context, ChatRoom.id,
      arguments: ChatRoomArguments(group, subGroupId, type));
=======
Future navigateToChatRoom({BuildContext context , String group , String subGroupId , ChatType type}) async {
  Navigator.pushNamed(context, ChatRoom.id , arguments: ChatRoomArguments(group, subGroupId ,type));
>>>>>>> 3754acf4b119421e42d45c5049a045d0f56113c2
}

Future navigateToEventList(context, String groupId) async {
  Navigator.pushNamed(context, EventList.id, arguments: groupId);
}

class ChatRoomArguments {
  String group;
  String subGroupId;
  ChatType type;

  ChatRoomArguments(this.group, this.subGroupId, this.type);
}
