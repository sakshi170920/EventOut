import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class loginorsignup extends StatelessWidget {
  loginorsignup({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Container(
            width: 800.0,
            height: 800.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/bg1.gif'),
                fit: BoxFit.cover,

              ),
            ),
          child: Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(-68.0, 0.0),
                child: Stack(
                  children: <Widget>[
                    Transform(
                      transform: Matrix4(0.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0,
                          0.0, 0.0, 1.0, 0.0, 0.0, 800.0, 0.0, 1.0),

                    ),
                    Transform.translate(
                      offset: Offset(104.0, 637.0),
                      child: Container(
                        width: 366.0,
                        height: 59.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(29.5),
                          color: const Color(0xffd80858),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(240.57, 646.5),
                      child: SizedBox(
                        width: 126.0,
                        child: Text(
                          'Sign Up',
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
                    Transform.translate(
                      offset: Offset(240.0, 717.0),
                      child: SizedBox(
                        width: 126.0,
                        child: Text(
                          'Login In',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 30,
                            color: const Color(0xff000000),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(86.0, 122.0),
                      child: SizedBox(
                        width: 216.0,
                        child: Text(
                          'Eventzy',
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
                    Transform.translate(
                      offset: Offset(277.57, 19.38),
                      child: SizedBox(
                        width: 218.0,
                        child: Text(
                          'Stay organized with\nprojects and teams',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 20.889999389648438,
                            color: const Color(0xffff5f7a),
                            height: 1.8321566023664637,
                          ),
                          textAlign: TextAlign.right,
                        ),
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
