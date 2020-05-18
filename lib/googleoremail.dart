import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Googleoremail extends StatelessWidget {
  Googleoremail({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    double height = MediaQuery. of(context). size. height;
    return Center(
      child: Container(

          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/bg1.gif'),
              fit: BoxFit.cover,
            ),
          ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(

            backgroundColor: const Color(0xffffffff),

            body: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(886.34, -0.5),
                  child: Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(-1065.34, -0.5),

                      ),
                      Transform.translate(
                        offset: Offset(-834.84, 220.88),
                        child: Container(
                          width: 353.0,
                          height: 342.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: const Color(0x80ffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-807.34, 280.5),
                        child: Container(
                          width: 298.0,
                          height: 51.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-807.38, 469.39),
                        child: Container(
                          width: 298.0,
                          height: 51.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-722.31, 296.67),
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                            fontFamily: 'MyriadPro-Regular',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-781.54, 293.65),
                        child: Text(
                          'G',
                          style: TextStyle(
                            fontFamily: 'MyriadPro-Regular',
                            fontSize: 24,
                            color: const Color(0xff000000),
                            height: 1.2000000476837158,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-744.93, 485.36),
                        child: Text(
                          'Continue with email',
                          style: TextStyle(
                            fontFamily: 'MyriadPro-Regular',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-789.34, 447.5),
                        child: Container(
                            width: 261.0,
                            height: 3.0,
                            color: const Color(0xffffffff)),
                      ),
                      Transform.translate(
                        offset: Offset(-789.03, 359.66),
                        child: Container(
                            width: 104.9,
                            height: 3.0,
                            color: const Color(0xffffffff)),
                      ),
                      Transform.translate(
                        offset: Offset(-670.89, 352.16),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontFamily: 'MyriadPro-Regular',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                            height: 1.2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-633.01, 359.66),
                        child: Container(
                            width: 104.9,
                            height: 3.0,
                            color: const Color(0xffffffff)),
                      ),
                      Transform.translate(
                        offset: Offset(-793.73, 385.74),
                        child: Text(
                          'Email Address',
                          style: TextStyle(
                            fontFamily: 'MyriadPro-Regular',
                            fontSize: 16.425090789794922,
                            color: const Color(0xff000000),
                            height: 1.2000000464496339,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
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
