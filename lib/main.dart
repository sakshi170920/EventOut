import 'package:EventOut/Chat/chatRoom.dart';
import 'package:EventOut/TaskScreens/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/login_screens/loginorsignup.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'MainPage/MainBody.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'SharedPreferencesMethods.dart';
import 'demo2.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool logged = await getLoginStatus();

  final MyApp myApp = MyApp(
      //initialRoute: logged ? MainBody.id : LoginSignUp.id,

      );
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp({this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginSignUp.id: (context) => LoginSignUp(),
        Googleoremail.id: (context) => Googleoremail(),
        Login.id: (context) => Login(),
        ProfileCompleter.id: (context) => ProfileCompleter(),
        ChatRoom.id: (context) => ChatRoom(),
        ContactList.id: (context) => ContactList(),
        EventList.id: (context) => EventList(),
        ClubList.id: (context) => ClubList(),
<<<<<<< HEAD
        //MainBody.id: (context) => MainBody(),
        TaskHandler.id: (context) => TaskHandler(),
=======
        MainBody.id: (context) => MainBody(),
        TaskHandler.id : (context) => TaskHandler(),
        Bringingguests2.id : (context) => Bringingguests2(),
>>>>>>> 3754acf4b119421e42d45c5049a045d0f56113c2
      },
      //initialRoute: initialRoute,
      home: MainBody(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xff101010),
        accentColor: const Color(0xff734F96),
      ),
    );
  }
}
