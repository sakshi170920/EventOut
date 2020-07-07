import 'dart:async';
import 'dart:ui';
import 'package:EventOut/Chat/DatabaseMethods.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:flutter/painting.dart';

String userEmail = '';
class ChatRoom extends StatefulWidget {
  static const String id = "ChatRoom";
  final DatabaseMethods databaseMethods = DatabaseMethods();
  @override
  _ChatRoomState createState( ) => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  final messageTextController = TextEditingController();
  String messageText;
  ChatType type ;
  String groupId;
  String subGroupId;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getGroupIds (String group , String subGroupId , ChatType type)
  {
    this.type = type;
    if (type == ChatType.INDIVIDUAL)
    {
      if(userEmail.hashCode >= group.hashCode)
        this.groupId = '$group-$userEmail';
      else
        this.groupId = '$userEmail-$group';

    }
  }


  void getCurrentUser() async {
    try {
      userEmail = await getEmail();
      print(userEmail);
      if (userEmail != null) {

      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ChatRoomArguments args = ModalRoute.of(context).settings.arguments;
    getGroupIds(args.group , args.subGroupId , args.type);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: new Color(0xFF241333),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Live Chat',

                      textAlign : TextAlign.start,
                      style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                        fontWeight: FontWeight.bold,

                    ),
                    ),

                  )),
              Expanded(
                flex: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    MessagesStream(type , groupId , subGroupId , widget.databaseMethods , controller ),
                    Container(
                      decoration: kMessageContainerDecoration,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(

                              child: TextField(
                                controller: messageTextController,
                                cursorColor: Colors.white,
                                onChanged: (value) {
                                  messageText = value;
                                },
                                decoration: kMessageTextFieldDecoration,
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              messageTextController.clear();

                              widget.databaseMethods.addMessage(groupId, subGroupId, messageText, userEmail , Timestamp.now());

                              Timer(Duration(milliseconds: 500),
                                      () => controller.jumpTo(controller.position.minScrollExtent));
                            },
                            child: Icon(Icons.send,color: Color(0xFF4A516B),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  final ChatType type ;
  final String groupId;
  final String subGroupId;
  final DatabaseMethods _databaseMethods;
  final ScrollController _controller;
  MessagesStream(this.type , this.groupId , this.subGroupId ,this._databaseMethods ,this._controller);
  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot>(
      stream: _databaseMethods.getChatRoomMessages(groupId, subGroupId),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.documents.reversed;
        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.data['text'];
          final messageSender = message.data['sender'];


          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: userEmail == messageSender,
          );

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            controller: _controller,
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.isMe});

  final String sender;
  final String text;
  final bool isMe;
  final List<Widget> profile = [];

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin:  EdgeInsets.symmetric(vertical: 10) ,
        child: Column(
          crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: isMe ? <Widget>[
                  UserName(sender: sender),
                  UserProfile(),
                ] :
                <Widget>[
                  UserProfile(),
                UserName(sender: sender),
          ],

            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(borderRadius:isMe
                  ? BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              )
                  : BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
                color: isMe ? new Color(0xFF5E4D69) : new Color(0xFF8A56AB),


              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,

                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    Key key,
    @required this.sender,
  }) : super(key: key);

  final String sender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        sender,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
