import 'package:EventOut/constants/constants.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:EventOut/LoginDatabase/LoginDetails.dart';

class Login extends StatefulWidget {
  static String id = 'login' ;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool invisible;
  bool spinner;
  String email;
  String password;
  bool validLogin;
  @override
  void initState() {
    // TODO: implement initState
    invisible = true;
    spinner = false;

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: spinner,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/bg.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(

                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(

                      margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
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
                              flex: 3,
                              child: GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    spinner = true;
                                  });
                                  try {
                                    validLogin  = await LoginDetails.isValidLoginEmail(email, password);
                                    print(validLogin);
                                    if(validLogin == false )
                                      throw Exception;
                                    else {
                                      setEmail(email);
                                      await setLoginStatus(true);
                                      navigateToContactList(context);
                                    }
                                  }
                                  catch(e)
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) => CustomDialog(
                                        title: "Login Failed",
                                        description:
                                        "Your email and password did not match . Try Again !",
                                        buttonText: "Close",
                                      ),
                                    );
                                    print(e);
                                    print('Invalid user');
                                    print(email);
                                    print(password);
                                    print(validLogin);
                                  }
                                  setState(() {
                                    spinner = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontFamily: 'SegoeUI-Bold',
                                      fontSize: 25,
                                      color: const Color(0xff05002a),
                                      height: 1.2000000762939453,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.0, color: Colors.black87),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (value){
                                        email = value;
                                      },

                                      decoration: InputDecoration(
                                        focusedErrorBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: 'Email',
                                        suffixIcon: Icon(
                                          Icons.email,size: 25,
                                          color: Colors.black87,

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 4,
                              child:
                              Container(
                                margin: EdgeInsets.all(4),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.0, color: Colors.black87),
                                ),
                                child: Center(
                                    child: Container(

                                      padding: const EdgeInsets.only(left: 20.0),

                                      child: TextField(
                                        obscureText: invisible,
                                        onChanged: (value){
                                          password = value;
                                        },


                                        decoration: InputDecoration(
                                          focusedErrorBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: 'password',

                                          suffixIcon: GestureDetector(
                                            onTapDown: (details){
                                              setState(() {
                                                invisible = false;

                                              });
                                            },
                                            onTapUp: (details){
                                              setState(() {
                                                invisible = true;
                                                print('tap up');

                                              });
                                            },
                                            child: Icon(
                                              Icons.remove_red_eye,size: 25,
                                              color: Colors.black87,

                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(

                                margin: EdgeInsets.symmetric(horizontal: 80 , vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black87,
                                  border: Border.all(
                                      width: 1.0, color: Colors.black87),
                                ),
                                child: Center(
                                  child: GestureDetector(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontFamily: 'SegoeUI-Bold',
                                        fontSize: 18,
                                        color: Colors.white,

                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:2,
                                    child: Text(
                                      'Don\'t have an account? ',
                                      style: TextStyle(
                                        fontFamily: 'SegoeUI',
                                        fontSize: 14,
                                        color: const Color(0xff000000),

                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: FlatButton(

                                      onPressed: (){
                                        navigateToGoogleorEmail(context);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        child: Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            fontFamily: 'SegoeUI',
                                            fontSize: 16,
                                            color: const Color(0xff000000),

                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




