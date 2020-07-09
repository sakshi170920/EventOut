import 'package:EventOut/Chat/chatRoom.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/login_screens/googleoremail.dart';
import 'package:EventOut/login_screens/login.dart';
import 'package:EventOut/login_screens/loginorsignup.dart';
import 'package:EventOut/login_screens/ProfileCompleter.dart';
import 'package:EventOut/Chat/test.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'SharedPreferencesMethods.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool logged = await getLoginStatus();


  final MyApp myApp = MyApp(
    initialRoute: logged ? ContactList.id : LoginSignUp.id,
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
        ClubList.id : (context) => ClubList(),
      },
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor:const Color(0xff101010),
        accentColor: const Color(0xff734F96),
      ),


    );
  }
}


