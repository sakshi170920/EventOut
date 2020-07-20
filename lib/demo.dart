import 'package:flutter/material.dart';
import 'dart:ui' as ui;

//import 'package:flutter_svg/flutter_svg.dart';
class Music extends StatelessWidget {
  static String id = "Music";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      title: 'Devotion',
      theme: appTheme,
    );
  }
}

ThemeData appTheme = ThemeData(
  fontFamily: 'Oxygen',
  primaryColor: Colors.purpleAccent,
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devotion'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CurvedListItem(
            title: 'Yoga and Meditation for Beginners',
            time: 'TODAY 5:30 PM',
            color: Colors.red,
            nextColor: Colors.green,
          ),
          CurvedListItem(
            title: 'Practice French, English And Chinese',
            time: 'TUESDAY 5:30 PM',
            color: Colors.green,
            nextColor: Colors.yellow,
          ),
          CurvedListItem(
            title: 'Adobe XD Live Event in Europe',
            time: 'FRIDAY 6:00 PM',
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class CurvedListItem extends StatelessWidget {
  const CurvedListItem({
    this.title,
    this.time,
    this.icon,
    this.people,
    this.color,
    this.nextColor,
  });

  final String title;
  final String time;
  final String people;
  final IconData icon;
  final Color color;
  final Color nextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          ),
        ),
        padding: const EdgeInsets.only(
          left: 32,
          top: 80.0,
          bottom: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(),
            ]),
      ),
    );
  }
}
//class Music extends StatelessWidget {
//static String id = "Music";
//  Music({
//    Key key,
//  }) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: const Color(0xffffffff),
//      body: Stack(
//        children: <Widget>[
//          // Adobe XD layer: 'bg/gray' (component)
//          Container(),
//          Transform.translate(
//            offset: Offset(-1346.0, -720.0),
//            child:
//            // Adobe XD layer: 'content' (group)
//            Stack(
//              children: <Widget>[
//                Transform.translate(
//                  offset: Offset(596.0, 721.0),
//                  child:
//                  // Adobe XD layer: 'Trending' (group)
//                  Stack(
//                    children: <Widget>[
//                      Transform.translate(
//                        offset: Offset(24.0, 579.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -186.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 725.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff241332),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(241.0, 48.47),
//                              child:
//                              // Adobe XD layer: 'icon' (shape)
//                              SvgPicture.string(
//                                _shapeSVG_a5f6455a6ca743509ec2b66273a45be0,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(70.0, 91.5),
//                              child:
//                              // Adobe XD layer: 'Paul, Carl & 10 oth…' (text)
//                              Text(
//                                'Paul, Carl & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                  height: 1.25,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 0.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 86.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Stack(
//                                          children: <Widget>[
//                                            // Adobe XD layer: 'Avatars/3' (group)
//                                            Stack(
//                                              children: <Widget>[
//                                                Transform.translate(
//                                                  offset: Offset(2.0, 2.0),
//                                                  child: Stack(
//                                                    children: <Widget>[
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          color: const Color(
//                                                              0xff565966),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          image:
//                                                          DecorationImage(
//                                                            image:
//                                                            const AssetImage(
//                                                                ''),
//                                                            fit: BoxFit.fill,
//                                                          ),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(-8.0, -6.0),
//                                          child: Stack(
//                                            children: <Widget>[
//                                              // Adobe XD layer: 'Avatars/1' (group)
//                                              Stack(
//                                                children: <Widget>[
//                                                  Transform.translate(
//                                                    offset: Offset(-3.0, -3.0),
//                                                    child: Stack(
//                                                      children: <Widget>[
//                                                        Transform.translate(
//                                                          offset:
//                                                          Offset(6.0, 10.0),
//                                                          child:
//                                                          // Adobe XD layer: 'Mask' (shape)
//                                                          Container(
//                                                            width: 24.0,
//                                                            height: 24.0,
//                                                            decoration:
//                                                            BoxDecoration(
//                                                              borderRadius: BorderRadius
//                                                                  .all(Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                              image:
//                                                              DecorationImage(
//                                                                image:
//                                                                const AssetImage(
//                                                                    ''),
//                                                                fit:
//                                                                BoxFit.fill,
//                                                              ),
//                                                              border: Border.all(
//                                                                  width: 2.0,
//                                                                  color: const Color(
//                                                                      0xffffffff)),
//                                                            ),
//                                                          ),
//                                                        ),
//                                                      ],
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 10.0),
//                              child:
//                              // Adobe XD layer: 'Adobe XD Live Event…' (text)
//                              Text(
//                                'Adobe XD Live Event in \nEurope',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 26,
//                                  color: const Color(0xffffffff),
//                                  letterSpacing: -0.4178600616455078,
//                                  fontWeight: FontWeight.w700,
//                                  height: 1.1538461538461537,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -7.0),
//                              child:
//                              // Adobe XD layer: 'FRIDAY 6:00 PM' (text)
//                              Text(
//                                'FRIDAY 6:00 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 375.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -172.0),
//                              child:
//                              // Adobe XD layer: 'Bg' (shape)
//                              Container(
//                                width: 726.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff8a56ac),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(240.5, 64.18),
//                              child:
//                              // Adobe XD layer: 'icon' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(2.0, 2.0),
//                                    child: Container(
//                                      width: 65.6,
//                                      height: 65.6,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(
//                                            Radius.elliptical(32.82, 32.82)),
//                                        border: Border.all(
//                                            width: 5.0,
//                                            color: const Color(0x12000000)),
//                                      ),
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(2.0, 2.0),
//                                    child: SvgPicture.string(
//                                      _shapeSVG_79fb2d8b7c3e47dfae8f79bf8f7493dd,
//                                      allowDrawingOutsideViewBox: true,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(64.0, 106.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              Text(
//                                'join Marie, John & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(1.0, 0.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 107.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, -5.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 100.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 26.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 333.0,
//                                height: 61.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Practice French, English And Chinese',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 26,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.4178600616455078,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.1538461538461537,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 7.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TUESDAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 189.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -189.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 727.0,
//                                height: 351.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xffd47fa6),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(243.5, 56.5),
//                              child:
//                              // Adobe XD layer: 'icon' (shape)
//                              SvgPicture.string(
//                                _shapeSVG_68971b9746a34de19a0eea5b00b91f2f,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(1.0, 9.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(64.0, 101.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              Text(
//                                'join Marie, John & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 17.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 309.0,
//                                height: 66.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Yoga and Meditation for Beginners',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 26,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.4178600616455078,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.1538461538461537,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -2.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TODAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(-24.0, -33.0),
//                              child:
//                              // Adobe XD layer: 'Tap target' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 195.0,
//                                decoration: BoxDecoration(),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Transform.translate(
//                  offset: Offset(971.0, 721.0),
//                  child:
//                  // Adobe XD layer: 'Health' (group)
//                  Stack(
//                    children: <Widget>[
//                      Transform.translate(
//                        offset: Offset(24.0, 579.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -186.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomRight: Radius.circular(60.0),
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff253e12),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(70.0, 91.5),
//                              child:
//                              // Adobe XD layer: 'Paul, Carl & 10 oth…' (text)
//                              Text(
//                                'Paul, Carl & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                  height: 1.25,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 0.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 86.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Stack(
//                                          children: <Widget>[
//                                            // Adobe XD layer: 'Avatars/3' (group)
//                                            Stack(
//                                              children: <Widget>[
//                                                Transform.translate(
//                                                  offset: Offset(2.0, 2.0),
//                                                  child: Stack(
//                                                    children: <Widget>[
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          color: const Color(
//                                                              0xff565966),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          image:
//                                                          DecorationImage(
//                                                            image:
//                                                            const AssetImage(
//                                                                ''),
//                                                            fit: BoxFit.fill,
//                                                          ),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(-8.0, -6.0),
//                                          child: Stack(
//                                            children: <Widget>[
//                                              // Adobe XD layer: 'Avatars/1' (group)
//                                              Stack(
//                                                children: <Widget>[
//                                                  Transform.translate(
//                                                    offset: Offset(-3.0, -3.0),
//                                                    child: Stack(
//                                                      children: <Widget>[
//                                                        Transform.translate(
//                                                          offset:
//                                                          Offset(6.0, 10.0),
//                                                          child:
//                                                          // Adobe XD layer: 'Mask' (shape)
//                                                          Container(
//                                                            width: 24.0,
//                                                            height: 24.0,
//                                                            decoration:
//                                                            BoxDecoration(
//                                                              borderRadius: BorderRadius
//                                                                  .all(Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                              image:
//                                                              DecorationImage(
//                                                                image:
//                                                                const AssetImage(
//                                                                    ''),
//                                                                fit:
//                                                                BoxFit.fill,
//                                                              ),
//                                                              border: Border.all(
//                                                                  width: 2.0,
//                                                                  color: const Color(
//                                                                      0xffffffff)),
//                                                            ),
//                                                          ),
//                                                        ),
//                                                      ],
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 10.0),
//                              child:
//                              // Adobe XD layer: 'Adobe XD Live Event…' (text)
//                              SizedBox(
//                                width: 327.0,
//                                height: 64.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Sports Lover Training Session',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 24,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.3857169799804687,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.25,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -7.0),
//                              child:
//                              // Adobe XD layer: 'FRIDAY 6:00 PM' (text)
//                              Text(
//                                'FRIDAY 6:00 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(274.5, 50.84),
//                              child:
//                              // Adobe XD layer: 'thermometer' (shape)
//                              SvgPicture.string(
//                                _shapeSVG_3dbabf033ecd494da17aa16e3f614c38,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 375.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -172.0),
//                              child:
//                              // Adobe XD layer: 'Bg' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff52912e),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(248.5, 64.18),
//                              child:
//                              // Adobe XD layer: 'icon' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(9.0, -4.68),
//                                    child:
//                                    // Adobe XD layer: 'info' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child: Container(
//                                            width: 57.8,
//                                            height: 57.8,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      28.88, 28.88)),
//                                              border: Border.all(
//                                                  width: 6.0,
//                                                  color:
//                                                  const Color(0x12000000)),
//                                            ),
//                                          ),
//                                        ),
//                                        Transform.translate(
//                                          offset: Offset(30.88, 19.33),
//                                          child: SvgPicture.string(
//                                            _shapeSVG_9f3a4b5f6f2c4deb88d67b0d41c3f4b7,
//                                            allowDrawingOutsideViewBox: true,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(55.0, 103.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              SizedBox(
//                                width: 95.0,
//                                height: 31.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'join Marie, John & 10 others',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 12,
//                                        color: const Color(0x7affffff),
//                                        letterSpacing: -0.24,
//                                        fontStyle: FontStyle.italic,
//                                        fontWeight: FontWeight.w500,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(-7.0, 4.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 107.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, -5.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 100.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 23.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 131.0,
//                                height: 70.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Learn How To do Your Own Juice ',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 18,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.28928773498535154,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.3333333333333333,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 7.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TUESDAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(212.0, 375.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -172.0),
//                              child:
//                              // Adobe XD layer: 'Bg' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff417623),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(248.5, 64.18),
//                              child:
//                              // Adobe XD layer: 'icon' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(9.0, -4.68),
//                                    child:
//                                    // Adobe XD layer: 'info' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child: Container(
//                                            width: 57.8,
//                                            height: 57.8,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      28.88, 28.88)),
//                                              border: Border.all(
//                                                  width: 6.0,
//                                                  color:
//                                                  const Color(0x12000000)),
//                                            ),
//                                          ),
//                                        ),
//                                        Transform.translate(
//                                          offset: Offset(30.88, 19.33),
//                                          child: SvgPicture.string(
//                                            _shapeSVG_ff5c0a286433475caa3589fc636569b0,
//                                            allowDrawingOutsideViewBox: true,
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(55.0, 103.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              SizedBox(
//                                width: 95.0,
//                                height: 31.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'join Marie, John & 10 others',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 12,
//                                        color: const Color(0x7affffff),
//                                        letterSpacing: -0.24,
//                                        fontStyle: FontStyle.italic,
//                                        fontWeight: FontWeight.w500,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(-7.0, 4.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 107.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, -5.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 100.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 23.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 131.0,
//                                height: 71.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Top Natural Remedies ',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 18,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.28928773498535154,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.3333333333333333,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 7.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TUESDAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 189.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -190.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 351.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xffb4c55b),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(1.0, 9.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(64.0, 101.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              Text(
//                                'join Marie, John & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 15.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 333.0,
//                                height: 66.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Vegetarians Recipes Meetup',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 24,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.3857169799804687,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.25,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -2.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TODAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(-24.0, -33.0),
//                              child:
//                              // Adobe XD layer: 'Tap target' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 195.0,
//                                decoration: BoxDecoration(),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(264.5, 45.57),
//                              child:
//                              // Adobe XD layer: 'git-pull-request' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(19.74, 30.34),
//                                    child: Container(
//                                      width: 9.9,
//                                      height: 9.9,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(
//                                            Radius.elliptical(4.97, 4.97)),
//                                        border: Border.all(
//                                            width: 6.0,
//                                            color: const Color(0x12000000)),
//                                      ),
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(17.25, 5.0),
//                                    child: Container(
//                                      width: 14.9,
//                                      height: 14.9,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(
//                                            Radius.elliptical(7.46, 7.46)),
//                                        border: Border.all(
//                                            width: 6.0,
//                                            color: const Color(0x12000000)),
//                                      ),
//                                    ),
//                                  ),
//                                  Transform(
//                                    transform: Matrix4(
//                                        0.5,
//                                        0.866025,
//                                        0.0,
//                                        0.0,
//                                        -0.866025,
//                                        0.5,
//                                        0.0,
//                                        0.0,
//                                        0.0,
//                                        0.0,
//                                        1.0,
//                                        0.0,
//                                        6.33,
//                                        35.85,
//                                        0.0,
//                                        1.0),
//                                    child: Container(
//                                      width: 14.9,
//                                      height: 14.9,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(
//                                            Radius.elliptical(7.46, 7.46)),
//                                        border: Border.all(
//                                            width: 6.0,
//                                            color: const Color(0x12000000)),
//                                      ),
//                                    ),
//                                  ),
//                                  Transform(
//                                    transform: Matrix4(
//                                        0.5,
//                                        -0.866025,
//                                        0.0,
//                                        0.0,
//                                        0.866025,
//                                        0.5,
//                                        0.0,
//                                        0.0,
//                                        0.0,
//                                        0.0,
//                                        1.0,
//                                        0.0,
//                                        35.55,
//                                        48.84,
//                                        0.0,
//                                        1.0),
//                                    child: Container(
//                                      width: 14.7,
//                                      height: 15.2,
//                                      decoration: BoxDecoration(
//                                        borderRadius: BorderRadius.all(
//                                            Radius.elliptical(7.34, 7.58)),
//                                        border: Border.all(
//                                            width: 6.0,
//                                            color: const Color(0x12000000)),
//                                      ),
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(10.05, 19.92),
//                                    child: SvgPicture.string(
//                                      _shapeSVG_08fa7c49fb504ed5bbf460007adff264,
//                                      allowDrawingOutsideViewBox: true,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Transform.translate(
//                  offset: Offset(1346.0, 721.0),
//                  child:
//                  // Adobe XD layer: 'Music' (group)
//                  Stack(
//                    children: <Widget>[
//                      Transform.translate(
//                        offset: Offset(24.0, 579.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -186.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 743.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff132641),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(70.0, 91.5),
//                              child:
//                              // Adobe XD layer: 'Paul, Carl & 10 oth…' (text)
//                              Text(
//                                'Paul, Carl & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                  height: 1.25,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 0.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 86.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Stack(
//                                          children: <Widget>[
//                                            // Adobe XD layer: 'Avatars/3' (group)
//                                            Stack(
//                                              children: <Widget>[
//                                                Transform.translate(
//                                                  offset: Offset(2.0, 2.0),
//                                                  child: Stack(
//                                                    children: <Widget>[
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          color: const Color(
//                                                              0xff565966),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                      // Adobe XD layer: 'Mask' (shape)
//                                                      Container(
//                                                        width: 24.0,
//                                                        height: 24.0,
//                                                        decoration:
//                                                        BoxDecoration(
//                                                          borderRadius:
//                                                          BorderRadius.all(
//                                                              Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                          image:
//                                                          DecorationImage(
//                                                            image:
//                                                            const AssetImage(
//                                                                ''),
//                                                            fit: BoxFit.fill,
//                                                          ),
//                                                          border: Border.all(
//                                                              width: 2.0,
//                                                              color: const Color(
//                                                                  0xffffffff)),
//                                                        ),
//                                                      ),
//                                                    ],
//                                                  ),
//                                                ),
//                                              ],
//                                            ),
//                                          ],
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(-8.0, -6.0),
//                                          child: Stack(
//                                            children: <Widget>[
//                                              // Adobe XD layer: 'Avatars/1' (group)
//                                              Stack(
//                                                children: <Widget>[
//                                                  Transform.translate(
//                                                    offset: Offset(-3.0, -3.0),
//                                                    child: Stack(
//                                                      children: <Widget>[
//                                                        Transform.translate(
//                                                          offset:
//                                                          Offset(6.0, 10.0),
//                                                          child:
//                                                          // Adobe XD layer: 'Mask' (shape)
//                                                          Container(
//                                                            width: 24.0,
//                                                            height: 24.0,
//                                                            decoration:
//                                                            BoxDecoration(
//                                                              borderRadius: BorderRadius
//                                                                  .all(Radius
//                                                                  .elliptical(
//                                                                  12.0,
//                                                                  12.0)),
//                                                              image:
//                                                              DecorationImage(
//                                                                image:
//                                                                const AssetImage(
//                                                                    ''),
//                                                                fit:
//                                                                BoxFit.fill,
//                                                              ),
//                                                              border: Border.all(
//                                                                  width: 2.0,
//                                                                  color: const Color(
//                                                                      0xffffffff)),
//                                                            ),
//                                                          ),
//                                                        ),
//                                                      ],
//                                                    ),
//                                                  ),
//                                                ],
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 10.0),
//                              child:
//                              // Adobe XD layer: 'Adobe XD Live Event…' (text)
//                              SizedBox(
//                                width: 310.0,
//                                height: 64.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Crazy Effects Music Has on Your Brain',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 24,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.3857169799804687,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.25,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -7.0),
//                              child:
//                              // Adobe XD layer: 'FRIDAY 6:00 PM' (text)
//                              Text(
//                                'FRIDAY 6:00 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(256.5, 50.5),
//                              child:
//                              // Adobe XD layer: 'icon' (group)
//                              SvgPicture.string(
//                                _shapeSVG_b2d06e0cf8604e7d8660135c6a0707fa,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(242.5, 49.18),
//                              child:
//                              // Adobe XD layer: 'icon' (group)
//                              Stack(
//                                children: <Widget>[],
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 375.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -172.0),
//                              child:
//                              // Adobe XD layer: 'Bg' (shape)
//                              Container(
//                                width: 632.0,
//                                height: 338.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff4666e5),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(64.0, 106.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              Text(
//                                'join Marie, John & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(1.0, 0.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 107.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, -5.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 100.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 24.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 333.0,
//                                height: 61.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'Read Inspiring Quotes Out Loud',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 24,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.3857169799804687,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.25,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 7.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TUESDAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(261.5, 76.5),
//                              child:
//                              // Adobe XD layer: 'book-open' (group)
//                              SvgPicture.string(
//                                _shapeSVG_72dc1d3f11b54207bdbdcebd7061a9bc,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Transform.translate(
//                        offset: Offset(24.0, 189.0),
//                        child:
//                        // Adobe XD layer: 'card' (group)
//                        Stack(
//                          children: <Widget>[
//                            Transform.translate(
//                              offset: Offset(-24.0, -189.0),
//                              child:
//                              // Adobe XD layer: 'bg' (shape)
//                              Container(
//                                width: 539.0,
//                                height: 351.0,
//                                decoration: BoxDecoration(
//                                  borderRadius: BorderRadius.only(
//                                    bottomLeft: Radius.circular(80.0),
//                                  ),
//                                  color: const Color(0xff4ebdef),
//                                ),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(1.0, 9.0),
//                              child:
//                              // Adobe XD layer: 'Avatars' (group)
//                              Stack(
//                                children: <Widget>[
//                                  Transform.translate(
//                                    offset: Offset(28.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Transform.translate(
//                                    offset: Offset(13.0, 87.0),
//                                    child:
//                                    // Adobe XD layer: 'Avatar' (group)
//                                    Stack(
//                                      children: <Widget>[
//                                        Transform.translate(
//                                          offset: Offset(2.0, 2.0),
//                                          child:
//                                          // Adobe XD layer: 'Mask' (shape)
//                                          Container(
//                                            width: 24.0,
//                                            height: 24.0,
//                                            decoration: BoxDecoration(
//                                              borderRadius: BorderRadius.all(
//                                                  Radius.elliptical(
//                                                      12.0, 12.0)),
//                                              image: DecorationImage(
//                                                image: const AssetImage(''),
//                                                fit: BoxFit.fill,
//                                              ),
//                                              border: Border.all(
//                                                  width: 2.0,
//                                                  color:
//                                                  const Color(0xffffffff)),
//                                            ),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(64.0, 101.0),
//                              child:
//                              // Adobe XD layer: 'join Marie, John & …' (text)
//                              Text(
//                                'join Marie, John & 10 others',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 12,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.24,
//                                  fontStyle: FontStyle.italic,
//                                  fontWeight: FontWeight.w500,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, 15.0),
//                              child:
//                              // Adobe XD layer: 'Experimental Pop Mu…' (text)
//                              SizedBox(
//                                width: 333.0,
//                                height: 66.0,
//                                child: SingleChildScrollView(
//                                    child: Text(
//                                      'NYC Electronic Music Meetup',
//                                      style: TextStyle(
//                                        fontFamily: 'Montserrat',
//                                        fontSize: 24,
//                                        color: const Color(0xffffffff),
//                                        letterSpacing: -0.3857169799804687,
//                                        fontWeight: FontWeight.w700,
//                                        height: 1.25,
//                                      ),
//                                      textAlign: TextAlign.left,
//                                    )),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(8.0, -2.0),
//                              child:
//                              // Adobe XD layer: 'TUESDAY 6:00 PM' (text)
//                              Text(
//                                'TODAY 5:30 PM',
//                                style: TextStyle(
//                                  fontFamily: 'Montserrat',
//                                  fontSize: 11,
//                                  color: const Color(0x7affffff),
//                                  letterSpacing: -0.22,
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                textAlign: TextAlign.left,
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(-24.0, -33.0),
//                              child:
//                              // Adobe XD layer: 'Tap target' (shape)
//                              Container(
//                                width: 375.0,
//                                height: 195.0,
//                                decoration: BoxDecoration(),
//                              ),
//                            ),
//                            Transform.translate(
//                              offset: Offset(262.5, 53.0),
//                              child:
//                              // Adobe XD layer: 'headphones' (group)
//                              SvgPicture.string(
//                                _shapeSVG_a02f2683f1364669b76ba111b4da12af,
//                                allowDrawingOutsideViewBox: true,
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//          // Adobe XD layer: 'bottom' (group)
//          Stack(
//            children: <Widget>[
//              Transform.translate(
//                offset: Offset(0.0, 712.0),
//                child:
//                // Adobe XD layer: 'bg' (shape)
//                Container(
//                  width: 375.0,
//                  height: 100.0,
//                  decoration: BoxDecoration(
//                    color: const Color(0x00ffffff),
//                    border:
//                    Border.all(width: 1.0, color: const Color(0x00707070)),
//                  ),
//                ),
//              ),
//              Transform.translate(
//                offset: Offset(121.0, 798.0),
//                child:
//                // Adobe XD layer: 'iPhone-X/Bars/Tab-B…' (component)
//                Container(),
//              ),
//              Transform.translate(
//                offset: Offset(-1.0, 0.0),
//                child:
//                // Adobe XD layer: 'button' (group)
//                Stack(
//                  children: <Widget>[
//                    Transform.translate(
//                      offset: Offset(304.0, 712.0),
//                      child:
//                      // Adobe XD layer: 'bg' (shape)
//                      Container(
//                        width: 56.0,
//                        height: 56.0,
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(28.0),
//                          color: const Color(0xffffffff),
//                          boxShadow: [
//                            BoxShadow(
//                                color: const Color(0x1a000000),
//                                offset: Offset(0, 1),
//                                blurRadius: 2)
//                          ],
//                        ),
//                      ),
//                    ),
//                    Transform.translate(
//                      offset: Offset(325.0, 733.0),
//                      child:
//                      // Adobe XD layer: 'plus' (group)
//                      SvgPicture.string(
//                        _shapeSVG_3b6d9dbc1d0146faad6abd9e4e7c5500,
//                        allowDrawingOutsideViewBox: true,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//          // Adobe XD layer: 'top' (group)
//          Stack(
//            children: <Widget>[
//              // Adobe XD layer: 'bg' (shape)
//              Container(
//                width: 375.0,
//                height: 156.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.only(
//                    bottomLeft: Radius.circular(80.0),
//                  ),
//                  color: const Color(0xffffffff),
//                ),
//              ),
//              Transform.translate(
//                offset: Offset(191.0, 138.0),
//                child:
//                // Adobe XD layer: 'top' (group)
//                SvgPicture.string(
//                  _shapeSVG_c79631215ff243a7bcd8d6297cc79ed8,
//                  allowDrawingOutsideViewBox: true,
//                ),
//              ),
//              // Adobe XD layer: 'top' (group)
//              Stack(
//                children: <Widget>[
//                  Transform.translate(
//                    offset: Offset(-147.0, 57.0),
//                    child:
//                    // Adobe XD layer: 'rows' (group)
//                    Stack(
//                      children: <Widget>[
//                        Transform.translate(
//                          offset: Offset(300.0, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(23.93, 55.0),
//                                child:
//                                // Adobe XD layer: 'CELEBRITY' (text)
//                                Text(
//                                  'MUSIC',
//                                  style: TextStyle(
//                                    fontFamily: 'Montserrat',
//                                    fontSize: 11,
//                                    color: const Color(0xff374750),
//                                    fontWeight: FontWeight.w700,
//                                  ),
//                                  textAlign: TextAlign.left,
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(18.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'Rectangle-4' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    color: const Color(0xffffffff),
//                                    border: Border.all(
//                                        width: 2.0,
//                                        color: const Color(0xff4ebdef)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(33.5, 16.04),
//                                child:
//                                // Adobe XD layer: 'headphones' (group)
//                                SvgPicture.string(
//                                  _shapeSVG_132a931b77be40fe8109ba33f5078ae0,
//                                  allowDrawingOutsideViewBox: true,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Transform.translate(
//                          offset: Offset(396.0, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(21.93, 55.0),
//                                child:
//                                // Adobe XD layer: 'CELEBRITY' (text)
//                                SizedBox(
//                                  width: 40.0,
//                                  child: Text(
//                                    'SPORT',
//                                    style: TextStyle(
//                                      fontFamily: 'Montserrat',
//                                      fontSize: 11,
//                                      color: const Color(0x8e374750),
//                                      fontWeight: FontWeight.w700,
//                                    ),
//                                    textAlign: TextAlign.center,
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(18.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'Rectangle-4' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    color: const Color(0xffffffff),
//                                    border: Border.all(
//                                        width: 1.0,
//                                        color: const Color(0x4d979797)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(30.5, 12.48),
//                                child:
//                                // Adobe XD layer: 'award' (group)
//                                Stack(
//                                  children: <Widget>[
//                                    Transform.translate(
//                                      offset: Offset(5.0, 1.0),
//                                      child: Container(
//                                        width: 14.0,
//                                        height: 14.0,
//                                        decoration: BoxDecoration(
//                                          borderRadius: BorderRadius.all(
//                                              Radius.elliptical(7.01, 7.01)),
//                                          border: Border.all(
//                                              width: 2.0,
//                                              color: const Color(0xff9aa6ac)),
//                                        ),
//                                      ),
//                                    ),
//                                    Transform.translate(
//                                      offset: Offset(7.0, 13.89),
//                                      child: SvgPicture.string(
//                                        _shapeSVG_369641c5fdf440f9b6a42077ffa12c40,
//                                        allowDrawingOutsideViewBox: true,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Transform.translate(
//                          offset: Offset(489.0, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(17.0, 55.0),
//                                child:
//                                // Adobe XD layer: 'CELEBRITY' (text)
//                                SizedBox(
//                                  width: 66.0,
//                                  child: Text(
//                                    'LEARNING',
//                                    style: TextStyle(
//                                      fontFamily: 'Montserrat',
//                                      fontSize: 11,
//                                      color: const Color(0x8e374750),
//                                      fontWeight: FontWeight.w700,
//                                    ),
//                                    textAlign: TextAlign.center,
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(26.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'Rectangle-4' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    color: const Color(0xffffffff),
//                                    border: Border.all(
//                                        width: 1.0,
//                                        color: const Color(0x1c979797)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(41.5, 17.8),
//                                child:
//                                // Adobe XD layer: 'book-open' (group)
//                                SvgPicture.string(
//                                  _shapeSVG_8258d36da59a4598a617b197c040bae5,
//                                  allowDrawingOutsideViewBox: true,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Transform.translate(
//                          offset: Offset(202.0, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(21.0, 55.0),
//                                child:
//                                // Adobe XD layer: 'SPACE' (text)
//                                Text(
//                                  'HEALTH',
//                                  style: TextStyle(
//                                    fontFamily: 'Montserrat',
//                                    fontSize: 11,
//                                    color: const Color(0x8e374750),
//                                    fontWeight: FontWeight.w700,
//                                  ),
//                                  textAlign: TextAlign.left,
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(20.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'bg' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    color: const Color(0xffffffff),
//                                    border: Border.all(
//                                        width: 1.0,
//                                        color: const Color(0x4d979797)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(34.5, 17.08),
//                                child:
//                                // Adobe XD layer: 'heart' (shape)
//                                SvgPicture.string(
//                                  _shapeSVG_5fc356d1387a4f69834f9d901c5bbae0,
//                                  allowDrawingOutsideViewBox: true,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Transform.translate(
//                          offset: Offset(100.7, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(11.3, 55.0),
//                                child:
//                                // Adobe XD layer: 'TRENDIN G' (text)
//                                Text.rich(
//                                  TextSpan(
//                                    style: TextStyle(
//                                      fontFamily: 'Montserrat',
//                                      fontSize: 11,
//                                      color: const Color(0xff374750),
//                                      letterSpacing: 0.366670051574707,
//                                    ),
//                                    children: [
//                                      TextSpan(
//                                        text: 'TRENDIN',
//                                        style: TextStyle(
//                                          fontWeight: FontWeight.w700,
//                                        ),
//                                      ),
//                                      TextSpan(
//                                        text: 'G',
//                                        style: TextStyle(
//                                          letterSpacing: 0.33610995483398437,
//                                          fontWeight: FontWeight.w700,
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                  textAlign: TextAlign.left,
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(18.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'bg' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    color: const Color(0xffffffff),
//                                    border: Border.all(
//                                        width: 1.0,
//                                        color: const Color(0x4d979797)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(31.0, 19.0),
//                                child:
//                                // Adobe XD layer: 'trending-up' (group)
//                                SvgPicture.string(
//                                  _shapeSVG_c5dbcdae589447a0b2b752d8b220b5a6,
//                                  allowDrawingOutsideViewBox: true,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Transform.translate(
//                          offset: Offset(-9.0, 0.0),
//                          child:
//                          // Adobe XD layer: 'row' (group)
//                          Stack(
//                            children: <Widget>[
//                              Transform.translate(
//                                offset: Offset(29.89, 55.0),
//                                child:
//                                // Adobe XD layer: 'YOU' (text)
//                                Text(
//                                  'YOU',
//                                  style: TextStyle(
//                                    fontFamily: 'Montserrat',
//                                    fontSize: 11,
//                                    color: const Color(0x8e374750),
//                                    fontWeight: FontWeight.w700,
//                                  ),
//                                  textAlign: TextAlign.left,
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(18.0, 0.0),
//                                child:
//                                // Adobe XD layer: 'Ava' (shape)
//                                Container(
//                                  width: 48.0,
//                                  height: 48.0,
//                                  decoration: BoxDecoration(
//                                    borderRadius: BorderRadius.circular(24.0),
//                                    image: DecorationImage(
//                                      image: const AssetImage(''),
//                                      fit: BoxFit.cover,
//                                    ),
//                                    border: Border.all(
//                                        width: 1.0,
//                                        color: const Color(0x1c979797)),
//                                  ),
//                                ),
//                              ),
//                              Transform.translate(
//                                offset: Offset(49.0, -7.0),
//                                child:
//                                // Adobe XD layer: 'Notifycaation' (group)
//                                Stack(
//                                  children: <Widget>[
//                                    // Adobe XD layer: 'bg' (shape)
//                                    Container(
//                                      width: 24.0,
//                                      height: 20.0,
//                                      decoration: BoxDecoration(
//                                        borderRadius:
//                                        BorderRadius.circular(10.0),
//                                        color: const Color(0xff9599b3),
//                                      ),
//                                    ),
//                                    Transform.translate(
//                                      offset: Offset(6.22, 1.0),
//                                      child:
//                                      // Adobe XD layer: '12' (text)
//                                      Text(
//                                        '12',
//                                        style: TextStyle(
//                                          fontFamily: 'Montserrat',
//                                          fontSize: 12,
//                                          color: const Color(0xffffffff),
//                                          fontWeight: FontWeight.w600,
//                                        ),
//                                        textAlign: TextAlign.left,
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Transform.translate(
//                    offset: Offset(0.0, 1.0),
//                    child:
//                    // Adobe XD layer: 'Status bar/light' (component)
//                    Container(),
//                  ),
//                  Transform.translate(
//                    offset: Offset(0.0, 128.0),
//                    child:
//                    // Adobe XD layer: 'Tap target' (shape)
//                    Container(
//                      width: 375.0,
//                      height: 28.0,
//                      decoration: BoxDecoration(),
//                    ),
//                  ),
//                ],
//              ),
//              // Adobe XD layer: 'bg' (shape)
//              Container(
//                width: 375.0,
//                height: 156.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.only(
//                    bottomLeft: Radius.circular(80.0),
//                  ),
//                  color: const Color(0xffffffff),
//                ),
//              ),
//            ],
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//const String _shapeSVG_a5f6455a6ca743509ec2b66273a45be0 =
//    '<svg viewBox="241.0 48.5 70.6 52.5" ><path transform="translate(945.31, 3344.94)" d="M -648.5967407226563 -3244.06982421875 C -649.6380004882813 -3244.16796875 -650.6451416015625 -3244.325439453125 -651.590087890625 -3244.538818359375 C -652.6602172851563 -3244.779052734375 -653.6790161132813 -3245.0966796875 -654.6195068359375 -3245.48193359375 C -655.1279907226563 -3245.690673828125 -655.6239013671875 -3245.923095703125 -656.0928344726563 -3246.173095703125 C -656.5851440429688 -3246.43603515625 -657.0621337890625 -3246.724853515625 -657.5103149414063 -3247.03271484375 C -657.9783325195313 -3247.35498046875 -658.42919921875 -3247.705810546875 -658.8486328125 -3248.07666015625 C -659.2860107421875 -3248.463623046875 -659.70361328125 -3248.883056640625 -660.087890625 -3249.3232421875 C -660.4874877929688 -3249.7802734375 -660.86279296875 -3250.272705078125 -661.204833984375 -3250.78662109375 C -661.5593872070313 -3251.3203125 -661.8870239257813 -3251.891845703125 -662.1785888671875 -3252.48583984375 C -662.4810180664063 -3253.1005859375 -662.7528076171875 -3253.755615234375 -662.98681640625 -3254.43505859375 C -663.2297973632813 -3255.13720703125 -663.4385986328125 -3255.88330078125 -663.6087036132813 -3256.65283203125 C -663.7842407226563 -3257.446533203125 -663.9227905273438 -3258.2890625 -664.0217895507813 -3259.15478515625 C -664.1226196289063 -3260.046630859375 -664.1846923828125 -3260.989990234375 -664.20361328125 -3261.957275390625 C -664.2216186523438 -3262.824951171875 -664.2045288085938 -3263.68359375 -664.15234375 -3264.5087890625 C -664.1019287109375 -3265.31787109375 -664.0164184570313 -3266.1162109375 -663.8984985351563 -3266.883056640625 C -663.7833251953125 -3267.634521484375 -663.6348266601563 -3268.374267578125 -663.4556884765625 -3269.082763671875 C -663.2802124023438 -3269.777587890625 -663.0704956054688 -3270.460693359375 -662.834716796875 -3271.112060546875 C -662.6025390625 -3271.751220703125 -662.337890625 -3272.377685546875 -662.048095703125 -3272.972412109375 C -661.7628173828125 -3273.557373046875 -661.4468994140625 -3274.128173828125 -661.1076049804688 -3274.6689453125 C -660.7745971679688 -3275.198974609375 -660.4110107421875 -3275.715576171875 -660.0267333984375 -3276.20263671875 C -659.6495971679688 -3276.680419921875 -659.241943359375 -3277.14306640625 -658.8162231445313 -3277.577880859375 C -658.3392333984375 -3278.063720703125 -657.8262329101563 -3278.529052734375 -657.2916259765625 -3278.95849609375 C -656.7669067382813 -3279.378662109375 -656.2089233398438 -3279.7763671875 -655.6320190429688 -3280.14013671875 C -655.0668334960938 -3280.49560546875 -654.46923828125 -3280.82763671875 -653.8563232421875 -3281.12744140625 C -653.255126953125 -3281.419921875 -652.6251220703125 -3281.68896484375 -651.9825439453125 -3281.9248046875 C -650.7279052734375 -3282.385498046875 -649.392333984375 -3282.736572265625 -648.0134887695313 -3282.96875 C -646.671630859375 -3283.194580078125 -645.276611328125 -3283.30908203125 -643.8690185546875 -3283.30908203125 C -643.3929443359375 -3283.30908203125 -642.9096069335938 -3283.29541015625 -642.4307861328125 -3283.269287109375 C -642.4722290039063 -3292.174072265625 -642.4307861328125 -3296.375244140625 -642.4307861328125 -3296.41650390625 L -633.9096069335938 -3296.41650390625 C -633.9096069335938 -3295.972900390625 -633.8735961914063 -3251.729736328125 -633.8385009765625 -3249.802978515625 C -633.8034057617188 -3247.88037109375 -633.67919921875 -3246.9912109375 -633.6774291992188 -3246.983154296875 L -633.6783447265625 -3246.982177734375 C -633.7125244140625 -3246.96240234375 -634.0320434570313 -3246.777099609375 -634.5909423828125 -3246.508056640625 C -635.1300048828125 -3246.247802734375 -636.0084228515625 -3245.85546875 -637.12353515625 -3245.463134765625 C -638.3781127929688 -3245.021240234375 -639.67138671875 -3244.670166015625 -640.9674072265625 -3244.417236328125 C -642.5883178710938 -3244.102294921875 -644.2182006835938 -3243.94287109375 -645.81298828125 -3243.94287109375 C -646.7697143554688 -3243.94287109375 -647.7066040039063 -3243.9853515625 -648.5967407226563 -3244.06982421875 Z M -646.935302734375 -3275.975830078125 C -647.5518188476563 -3275.882080078125 -648.152099609375 -3275.736328125 -648.7200317382813 -3275.5419921875 C -650.0673217773438 -3275.080322265625 -651.2427368164063 -3274.344970703125 -652.212890625 -3273.35595703125 C -652.7250366210938 -3272.833984375 -653.1840209960938 -3272.2353515625 -653.5791015625 -3271.57568359375 C -653.7879028320313 -3271.227294921875 -653.9832153320313 -3270.854736328125 -654.15869140625 -3270.46875 C -654.3405151367188 -3270.068115234375 -654.506103515625 -3269.642578125 -654.6519165039063 -3269.203369140625 C -654.8031005859375 -3268.748779296875 -654.9363403320313 -3268.266357421875 -655.0479125976563 -3267.7705078125 C -655.1640014648438 -3267.257568359375 -655.2603149414063 -3266.716552734375 -655.3350219726563 -3266.160400390625 C -655.4114990234375 -3265.587158203125 -655.4664306640625 -3264.982177734375 -655.4996948242188 -3264.364013671875 C -655.5330200195313 -3263.725830078125 -655.5429077148438 -3263.055419921875 -655.5303344726563 -3262.370361328125 C -655.4520263671875 -3261.246337890625 -655.2999267578125 -3260.18896484375 -655.0767211914063 -3259.227783203125 C -654.8660888671875 -3258.3212890625 -654.5880126953125 -3257.47802734375 -654.2496337890625 -3256.72216796875 C -653.9319458007813 -3256.011962890625 -653.5538940429688 -3255.3603515625 -653.12548828125 -3254.785400390625 C -652.726806640625 -3254.249755859375 -652.2741088867188 -3253.767333984375 -651.7817993164063 -3253.3525390625 C -651.326416015625 -3252.96826171875 -650.8259887695313 -3252.632568359375 -650.2941284179688 -3252.3544921875 C -649.8071899414063 -3252.099609375 -649.2843017578125 -3251.88818359375 -648.7398071289063 -3251.725341796875 C -647.802001953125 -3251.444580078125 -646.792236328125 -3251.30224609375 -645.7374267578125 -3251.30224609375 L -645.7365112304688 -3251.30224609375 C -644.7977905273438 -3251.30224609375 -644.0292358398438 -3251.415771484375 -643.5504150390625 -3251.510986328125 C -643.279541015625 -3251.565185546875 -643.0220947265625 -3251.6298828125 -642.8079223632813 -3251.696533203125 C -642.618896484375 -3251.7548828125 -642.4659423828125 -3251.816162109375 -642.3759155273438 -3251.86669921875 L -642.3759155273438 -3275.551025390625 C -642.4487915039063 -3275.657958984375 -642.8043212890625 -3275.7958984375 -643.2831420898438 -3275.900146484375 C -643.5576171875 -3275.95947265625 -643.8582153320313 -3276.00732421875 -644.177734375 -3276.04052734375 C -644.5377197265625 -3276.079345703125 -644.9111938476563 -3276.09814453125 -645.288330078125 -3276.09814453125 C -645.8409423828125 -3276.09814453125 -646.3953247070313 -3276.056884765625 -646.935302734375 -3275.975830078125 Z M -685.6893310546875 -3264.778076171875 L -695.09521484375 -3244.58203125 L -704.310302734375 -3244.606201171875 L -690.8112182617188 -3270.3525390625 L -703.8414306640625 -3296.39404296875 L -694.3338012695313 -3296.391357421875 L -685.076416015625 -3276.537353515625 L -675.9081420898438 -3296.471435546875 L -666.9540405273438 -3296.45263671875 L -680.031005859375 -3271.204833984375 L -666.175537109375 -3244.585693359375 L -675.9207153320313 -3244.58203125 L -685.6893310546875 -3264.778076171875 Z" fill="#ffffff" fill-opacity="0.11" stroke="none" stroke-width="1" stroke-opacity="0.11" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
//const String _shapeSVG_79fb2d8b7c3e47dfae8f79bf8f7493dd =
//    '<svg viewBox="2.0 2.0 65.6 65.6" ><path transform="translate(2.0, 34.82)" d="M 0 0 L 65.640625 0" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="5" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(13.69, 0.0)" d="M 21.12812995910645 1.99999988079071 C 29.33740997314453 10.98736190795898 34.00272369384766 22.6506519317627 34.25624847412109 34.82030868530273 C 34.00271987915039 46.98996353149414 29.33740425109863 58.65325546264648 21.12812614440918 67.640625 C 12.91884708404541 58.65326690673828 8.253530502319336 46.98996734619141 7.999998092651367 34.8203125 C 8.253527641296387 22.65064811706543 12.91884517669678 10.9873571395874 21.12812423706055 1.99999988079071 Z" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="5" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_68971b9746a34de19a0eea5b00b91f2f =
//    '<svg viewBox="243.5 56.5 67.0 61.0" ><path transform="translate(241.5, 53.89)" d="M 69 33.61112594604492 L 56 33.61112594604492 L 46 63.61112594604492 L 26 2.611125946044922 L 15 33.61112594604492 L 2 33.61112594604492" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_3dbabf033ecd494da17aa16e3f614c38 =
//    '<svg viewBox="274.5 50.8 22.4 54.7" ><path transform="translate(267.5, 49.84)" d="M 24.39113616943359 35.18498611450195 L 24.39113616943359 7.210934638977051 C 24.39113616943359 3.780730009078979 21.61040878295898 0.9999997615814209 18.18020248413086 1.000000238418579 C 14.74999713897705 1.000000238418579 11.96926784515381 3.780731439590454 11.96926784515381 7.210936546325684 L 11.96926784515381 35.18498611450195 C 7.874733924865723 37.92076110839844 6.052449226379395 43.01349639892578 7.48188304901123 47.72586059570313 C 8.911316871643066 52.43822479248047 13.2558069229126 55.66034698486328 18.18020248413086 55.66034698486328 C 23.10459899902344 55.66034698486328 27.44908905029297 52.43822479248047 28.87852096557617 47.72585678100586 C 30.30795669555664 43.01349639892578 28.48567199707031 37.9207649230957 24.39114379882813 35.18498992919922 Z" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
//const String _shapeSVG_9f3a4b5f6f2c4deb88d67b0d41c3f4b7 =
//    '<svg viewBox="30.9 19.3 1.0 23.1" ><path transform="translate(30.88, 30.88)" d="M 0 11.55390644073486 L 0 0" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="7" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(30.88, 19.33)" d="M 0 0 L 0 0" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="7" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_ff5c0a286433475caa3589fc636569b0 =
//    '<svg viewBox="30.9 19.3 1.0 23.1" ><path transform="translate(30.88, 30.88)" d="M 0 11.55390644073486 L 0 0" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="7" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(30.88, 19.33)" d="M 0 0 L 0 0" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="7" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_08fa7c49fb504ed5bbf460007adff264 =
//    '<svg viewBox="10.1 19.9 29.2 22.6" ><path transform="translate(24.71, 19.92)" d="M 0 0 L 0 9.943577766418457" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="matrix(0.5, 0.866025, -0.866025, 0.5, 18.67, 37.33)" d="M 0 0 L 3.552713678800501e-15 9.943577766418457" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="matrix(0.5, -0.866025, 0.866025, 0.5, 30.47, 37.42)" d="M 3.552713678800501e-15 0 L 0 10.10987091064453" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_b2d06e0cf8604e7d8660135c6a0707fa =
//    '<svg viewBox="256.5 50.5 61.4 50.2" ><g transform="translate(242.5, 49.18)"><g transform="translate(13.0, -1.68)"><path transform="translate(9.37, 33.68)" d="M 0 19.52425384521484 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(9.37, 3.0)" d="M 0 19.52425384521484 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(31.68, 28.1)" d="M 0 25.10261154174805 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(31.68, 3.0)" d="M 0 13.94589519500732 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(53.99, 39.26)" d="M 0 13.94589519500732 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(53.99, 3.0)" d="M 0 25.10261154174805 L 0 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(1.0, 33.68)" d="M 0 0 L 16.73507499694824 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(23.31, 16.95)" d="M 0 0 L 16.73507499694824 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(45.63, 39.26)" d="M 0 0 L 16.73507499694824 0" fill="none" fill-opacity="0.07" stroke="#ffffff" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></g></g></svg>';
//const String _shapeSVG_72dc1d3f11b54207bdbdcebd7061a9bc =
//    '<svg viewBox="261.5 76.5 52.5 47.2" ><g transform="translate(259.5, 73.5)"><path transform="translate(0.0, 0.0)" d="M 2 2.999999761581421 L 17.74992752075195 2.999999761581421 C 23.54889297485352 2.999999761581421 28.24988174438477 7.700989246368408 28.24988174438477 13.49995231628418 L 28.24988174438477 50.24977874755859 C 28.24988174438477 45.90055465698242 24.7241382598877 42.37481689453125 20.37491607666016 42.37481689453125 L 2 42.37481689453125 L 2 2.999999761581421 Z" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(16.25, 0.0)" d="M 38.2498779296875 2.999999761581421 L 22.49995231628418 2.999999761581421 C 16.70099067687988 2.999999761581421 11.99999904632568 7.700990200042725 11.99999904632568 13.49995422363281 L 11.99999904632568 50.24977874755859 C 11.99999904632568 45.90055465698242 15.52574443817139 42.37481689453125 19.87496948242188 42.37481689453125 L 38.2498779296875 42.37481689453125 L 38.2498779296875 2.999999761581421 Z" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_a02f2683f1364669b76ba111b4da12af =
//    '<svg viewBox="262.5 53.0 56.5 56.5" ><g transform="translate(259.5, 50.0)"><path  d="M 3 50.08333206176758 L 3 31.25 C 2.999996662139893 15.6479549407959 15.64795684814453 2.999996662139893 31.25000381469727 3 C 46.85204315185547 3 59.5 15.64795875549316 59.5 31.25000762939453 L 59.5 50.08333206176758" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(0.0, 23.53)" d="M 59.5 29.69443702697754 C 59.5 33.16156387329102 56.68933868408203 35.97222137451172 53.22221755981445 35.97222137451172 L 50.08333206176758 35.97222137451172 C 46.61621475219727 35.97222137451172 43.8055534362793 33.16156387329102 43.8055534362793 29.69443702697754 L 43.8055534362793 20.27777481079102 C 43.8055534362793 16.81065368652344 46.61621475219727 13.99999618530273 50.08333206176758 13.99999618530273 L 59.5 13.99999618530273 L 59.5 29.69443702697754 Z M 3 29.69443702697754 C 3 33.16155624389648 5.810656070709229 35.97222137451172 9.277775764465332 35.97222137451172 L 12.41666698455811 35.97222137451172 C 15.88378715515137 35.97222137451172 18.69444465637207 33.16155624389648 18.69444465637207 29.69443702697754 L 18.69444465637207 20.27777481079102 C 18.69444465637207 16.81065368652344 15.88378715515137 13.99999618530273 12.41666698455811 13.99999618530273 L 3 13.99999618530273 L 3 29.69443702697754 Z" fill="none" fill-opacity="0.07" stroke="#000000" stroke-width="6" stroke-opacity="0.07" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_3b6d9dbc1d0146faad6abd9e4e7c5500 =
//    '<svg viewBox="325.0 733.0 14.0 14.0" ><g transform="translate(325.0, 733.0)"><path  d="M 7 0 L 7 14" fill="none" stroke="#241332" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 0 7 L 14 7" fill="none" stroke="#241332" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_132a931b77be40fe8109ba33f5078ae0 =
//    '<svg viewBox="33.5 16.0 16.8 16.8" ><g transform="translate(30.5, 13.04)"><path  d="M 3 16.96352005004883 L 3 11.37811183929443 C 2.999999046325684 6.751008987426758 6.751008987426758 2.999999046325684 11.37811279296875 3 C 16.00521469116211 3 19.7562255859375 6.751009941101074 19.7562255859375 11.37811374664307 L 19.7562255859375 16.96352005004883" fill="none" stroke="#352641" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(0.0, -0.76)" d="M 19.7562255859375 18.65450668334961 C 19.7562255859375 19.68275260925293 18.92266654968262 20.51630973815918 17.8944206237793 20.51630973815918 L 16.96352005004883 20.51630973815918 C 15.93527603149414 20.51630973815918 15.10171699523926 19.68275260925293 15.10171699523926 18.65450668334961 L 15.10171699523926 15.86180305480957 C 15.10171699523926 14.83355808258057 15.93527603149414 14.00000095367432 16.96352005004883 14.00000095367432 L 19.7562255859375 14.00000095367432 L 19.7562255859375 18.65450668334961 Z M 3 18.65450668334961 C 3 19.6827507019043 3.833557605743408 20.51630973815918 4.86180305480957 20.51630973815918 L 5.792704582214355 20.51630973815918 C 6.820950031280518 20.51630973815918 7.654507160186768 19.6827507019043 7.654507160186768 18.65450668334961 L 7.654507160186768 15.86180305480957 C 7.654507160186768 14.83355808258057 6.820950031280518 14.00000095367432 5.792704582214355 14.00000095367432 L 3 14.00000095367432 L 3 18.65450668334961 Z" fill="none" stroke="#352641" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_369641c5fdf440f9b6a42077ffa12c40 =
//    '<svg viewBox="7.0 13.9 10.0 9.1" ><path transform="translate(0.0, 0.01)" d="M 8.211286544799805 13.89001083374023 L 6.999999523162842 23.00970077514648 L 12.00531768798828 20.00650978088379 L 17.0106372833252 23.00970077514648 L 15.79934978485107 13.8799991607666" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_8258d36da59a4598a617b197c040bae5 =
//    '<svg viewBox="41.5 17.8 17.4 15.7" ><g transform="translate(39.5, 14.8)"><path  d="M 2 3 L 7.232861518859863 3 C 9.159546852111816 3 10.721435546875 4.561887741088867 10.721435546875 6.488574028015137 L 10.721435546875 18.69858551025391 C 10.721435546875 17.25356864929199 9.550019264221191 16.0821533203125 8.105005264282227 16.0821533203125 L 2 16.0821533203125 L 2 3 Z" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-1.28, 0.0)" d="M 20.721435546875 3 L 15.48857402801514 3 C 13.56188774108887 3 12 4.561888217926025 12 6.488574504852295 L 12 18.69858551025391 C 12 17.25356864929199 13.17141628265381 16.0821533203125 14.61643123626709 16.0821533203125 L 20.721435546875 16.0821533203125 L 20.721435546875 3 Z" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_5fc356d1387a4f69834f9d901c5bbae0 =
//    '<svg viewBox="34.5 17.1 19.1 16.6" ><path transform="translate(32.95, 14.09)" d="M 19.16461944580078 4.470018863677979 C 17.20308303833008 2.50755786895752 14.02182197570801 2.50755786895752 12.06028366088867 4.470017433166504 L 11.09234237670898 5.437961101531982 L 10.12439918518066 4.470018863677979 C 8.162591934204102 2.508211612701416 4.981873512268066 2.508211851119995 3.020065546035767 4.470019817352295 C 1.058257937431335 6.431827068328857 1.058258295059204 9.612545967102051 3.020066022872925 11.57435417175293 L 3.988008260726929 12.54229640960693 L 11.09234237670898 19.64663124084473 L 18.19667816162109 12.5422945022583 L 19.16461944580078 11.5743522644043 C 21.1270809173584 9.612814903259277 21.1270809173584 6.431556224822998 19.16462135314941 4.47001838684082 Z" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
//const String _shapeSVG_c5dbcdae589447a0b2b752d8b220b5a6 =
//    '<svg viewBox="31.0 19.0 20.0 10.9" ><g transform="translate(31.0, 19.0)"><path  d="M 20 0 L 11.3636360168457 8.636363983154297 L 6.818181991577148 4.090909004211426 L 0 10.90909099578857" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 14.54545402526855 0 L 20 0 L 20 5.454545497894287" fill="none" stroke="#9aa6ac" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></g></svg>';
//const String _shapeSVG_c79631215ff243a7bcd8d6297cc79ed8 =
//    '<svg viewBox="191.0 138.0 9.0 4.5" ><g transform=""><g transform="translate(183.0, 138.0)"><path transform="translate(8.0, 0.0)" d="M 0 0 L 4.5 4.5 L 9 0" fill="none" fill-opacity="0.21" stroke="#000000" stroke-width="2" stroke-opacity="0.21" stroke-linecap="round" stroke-linejoin="round" /></g></g></svg>';
