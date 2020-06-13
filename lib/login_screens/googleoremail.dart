
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/LoginDatabase/LoginDetails.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';


class Googleoremail extends StatefulWidget {
  static String id = 'googleoremail'  ;



  @override
  _GoogleoremailState createState() => _GoogleoremailState();
}

class _GoogleoremailState extends State<Googleoremail> {

  String mEmail;

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),
            Expanded(
              flex: 2,
              child: Container(

                margin: EdgeInsets.fromLTRB(30, 40, 30, 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0x80ffffff),

                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        height: 1,
                      ),

                      Expanded(
                        flex: 4,
                        child:
                        Container(

                          margin: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'G',
                                style: TextStyle(
                                  fontFamily: 'MyriadPro-Regular',
                                  fontSize: 24,
                                  color: const Color(0xff000000),

                                ),
                                textAlign: TextAlign.left,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: FlatButton(

                                  child: Text(
                                    'Login with Google',
                                    style: TextStyle(
                                      fontFamily: 'MyriadPro-Regular',
                                      fontSize: 20,
                                      color: const Color(0xff000000),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),


                            ],

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Divider(
                                  color: Colors.white,
                                  height: 2,
                                  thickness: 3,


                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 10,
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                    fontFamily: 'MyriadPro-Regular',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),


                                  ),
                                  textAlign: TextAlign.center,

                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Divider(
                                  color: Colors.white,
                                  height: 2,
                                  thickness: 3,

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      //text box for email
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white12,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (email) async {
                                  mEmail = email;
                                },

                                decoration: InputDecoration(
                                  focusedErrorBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: 'Email',


                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),

                          child: Divider(
                            color: Colors.white,
                            height: 2,
                            thickness: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,

                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () async {
                                if(await LoginDetails.isValidRegisterEmail(mEmail)) {
                                  await setEmail(mEmail);
                                  navigateToProfileCompleter(context);
                                }
                                else
                                  print('Invalid user');
                              },

                              child: Text(
                                "Continue with Email"
                                ,style: TextStyle(
                                fontFamily: 'MyriadPro-Regular',
                                fontSize: 20,
                                color: const Color(0xff000000),
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                        ),
                      ),

                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),
          ],
        ),
      ),
    );
  }
}






