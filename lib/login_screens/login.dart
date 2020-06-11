
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phpadmingetdata/NavigationMethods.dart';


class Login extends StatefulWidget {
  static String id = 'login' ;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool invisible;
  @override
  void initState() {
    // TODO: implement initState
    invisible = true;

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                flex: 2,
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
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
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

                              margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0, color: Colors.black87),
                              ),
                              child: Center(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1.0, color: Colors.black87),
                                    ),
                                    child: Center(
                                      child: TextField(
                                        obscureText: invisible,
                                        onChanged: (password){


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
                                    ),
                                  )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  fontFamily: 'SegoeUI',
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  color: const Color(0xff000000),
                                  height: 1.2000000817435128,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 3,
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
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontFamily: 'SegoeUI',
                                        fontSize: 20,
                                        color: const Color(0xff000000),

                                      ),
                                      textAlign: TextAlign.center,
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
                flex: 1,
                child: Container(

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




