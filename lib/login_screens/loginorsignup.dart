import 'package:flutter/material.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/LoginDatabase/LoginDetails.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginSignUp extends StatelessWidget {
  static String id = 'loginorsignup';

  LoginSignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: SafeArea(
        child: Stack(

          children : <Widget>[
           Container(
             margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/loginSignup.gif'),
              ),
            ),

          ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Event',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                fontSize: 25,
                                color: const Color(0xffEE2263),

                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Out',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                fontSize: 25,
                                color: const Color(0xff1870d0),

                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image(image: AssetImage('assets/logo.png')),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 12,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.all(23),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29.5),
                          color: const Color(0xffEE2263),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            navigateToGoogleorEmail(context);
                          },
                          child: Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica',
                                    fontSize: 30,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: FlatButton(
                        onPressed: () {
                          navigateToLogin(context);
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ],
                ),
    ]
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  String data = '123';
}
