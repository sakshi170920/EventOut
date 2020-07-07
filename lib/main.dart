import 'package:EventOut/Chat/chatRoom.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/login_screens/loginorsignup.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'package:provider/provider.dart';
import 'package:EventOut/Chat/test.dart';
import 'package:EventOut/Chat/ContactList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      routes: {
        LoginSignUp.id : (context) => LoginSignUp(),
        Googleoremail.id: (context) => Googleoremail(),
        Login.id : (context) => Login(),
        ProfileCompleter.id : (context) => ProfileCompleter(),
        ChatRoom.id : (context) => ChatRoom(),
        Test.id : (context) => Test(),
        ContactList.id : (context) => ContactList(),
        EventList.id : (context) => EventList(),
      },
      initialRoute: LoginSignUp.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor:const Color(0xff101010),
        accentColor: const Color(0xff734F96),
      ),


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }




  @override
  void initState() {

  }
}
