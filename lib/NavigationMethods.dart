import 'package:EventOut/MainPage/OrganizationClass.dart';
import 'package:EventOut/OrganizationPage/OrganizationPageMainBody.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/Chat/chatRoom.dart';
import 'package:EventOut/MainPage/MainBody.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'package:EventOut/constants/constants.dart';
import 'TaskScreens/task_screen.dart';
import 'calendar/calendar.dart';


void navigateToProfileCompleter(context) async {
  Navigator.pushNamed(context, ProfileCompleter.id);
}
void navigateToCalendar(context) async {
  Navigator.pushNamed(context, Calendar.id);
}
void navigateToTaskScreen(context) async {
  Navigator.pushNamed(context, TaskHandler.id);
}

void navigateToClubList(context) async {
  Navigator.pushNamed(context, ClubList.id);
}

void navigateToContactList(context) async {
  Navigator.pushNamed(context, ContactList.id);
}

 void navigateToMainBody(context ) async {
   Navigator.pushNamed(context, MainBody.id );
 }
void navigateToGoogleorEmail(context) async {
  Navigator.pushNamed(context, Googleoremail.id);
}

void navigateToLogin(context) async {
  Navigator.pushNamed(context, Login.id);
}
void navigationToOrganizationPageMainBody(context , OrganizationClass temp) async {
  Navigator.pushNamed( context , OrganizationPageMainBody.id,arguments: temp,
  );
}

void navigateToChatRoom(
    {BuildContext context,
    String group,
    String subGroupId,
    ChatType type}) async {
  Navigator.pushNamed(context, ChatRoom.id,
      arguments: ChatRoomArguments(group, subGroupId, type));
}

void navigateToEventList(context, String groupId) async {
  Navigator.pushNamed(context, EventList.id, arguments: groupId);
}

class ChatRoomArguments {
  String group;
  String subGroupId;
  ChatType type;

  ChatRoomArguments(this.group, this.subGroupId, this.type);
}
