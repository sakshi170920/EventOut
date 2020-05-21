
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';


class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/back.jpg'),
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
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Create a Password',
                                style: TextStyle(
                                  fontFamily: 'SegoeUI-Bold',
                                  fontSize: 27,
                                  color: Colors.white,
                                  height: 1.2000000762939453,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Your password must include at least one symbol and be 8 or more characters long',
                                style: TextStyle(
                                  fontFamily: 'SegoeUI',
                                  fontSize: 14,
                                  color: const Color(0xffffffff),
                                  height: 1.2000000817435128,
                                ),
                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child:
                            Container(

                              margin: EdgeInsets.fromLTRB(9,14,9,14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0, color: Colors.black87),
                              ),
                              child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: PasswordField(
                                      hintText: 'Password',

                                      border: InputBorder.none,


                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.black87,
                                      ),

                                    ),
                                  )
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 4,
                            child:
                            Container(

                              margin: EdgeInsets.fromLTRB(9,14,9,14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0, color: Colors.black87),
                              ),
                              child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: PasswordField(
                                      hintText: 'Confirm your Password',

                                      border: InputBorder.none,


                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.black87,
                                      ),

                                    ),
                                  )
                              ),
                            ),
                          ),




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




