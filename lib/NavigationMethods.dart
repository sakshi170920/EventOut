import 'package:flutter/material.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/Chat/chatRoom.dart';
//import 'package:EventOut/Chat/test.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';

Future navigateToProfileCompleter(context) async {
  Navigator.pushNamed(context, ProfileCompleter.id);
}

Future navigateToContactList(context) async {
  Navigator.pushNamed(context, ContactList.id);
}

Future navigateToGoogleorEmail(context) async {
  Navigator.pushNamed(context, Googleoremail.id);
}

Future navigateToLogin(context) async {
  Navigator.pushNamed(context, Login.id);
}

Future navigateToChatRoom(
    {context, String group, String subGroupId, ChatType type}) async {
  Navigator.pushNamed(context, ChatRoom.id,
      arguments: ChatRoomArguments(group, subGroupId, type));
}

//Future navigateToTest(context) async {
//  Navigator.pushNamed(context, Test.id);
//}
Future navigateToEventList(context, String groupId) async {
  Navigator.pushNamed(context, EventList.id, arguments: groupId);
}

class ChatRoomArguments {
  String group;
  String subGroupId;
  ChatType type;

  ChatRoomArguments(this.group, this.subGroupId, this.type);
}
