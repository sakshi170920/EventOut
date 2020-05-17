import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  Login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),



      body: Container(
        width: 785.0,
        height: 900.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/bg.gif'),
            fit: BoxFit.fill,
          ),
        ),


        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(-166.0, 0.0),

            ),
            Transform.translate(
              offset: Offset(50.1, 225.58),
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
              offset: Offset(56.6, 379.73),
              child:
              // Adobe XD layer: 'Group 128' (group)
              Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 34' (group)
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 340.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          color: const Color(0xffffffff),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.5, 0.5),
                        child: Container(
                          width: 339.0,
                          height: 49.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff9a9ea4)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(14.0, 14.88),
                    child:
                    // Adobe XD layer: 'Application' (group)
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      region: Offset(14.0, 14.9) & Size(54.0, 17.0),
                      child: Stack(
                        children: <Widget>[
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontFamily: 'SegoeUI',
                                fontSize: 13,
                                color: const Color(0xff7c8085),
                                height: 1.200000029343825,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(56.6, 468.73),
              child:
              // Adobe XD layer: 'Group 194' (group)
              Stack(
                children: <Widget>[
                  // Adobe XD layer: 'Rectangle 34-2' (group)
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 340.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.0),
                          color: const Color(0xffffffff),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0.5, 0.5),
                        child: Container(
                          width: 339.0,
                          height: 49.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff9a9ea4)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(14.0, 14.88),
                    child:
                    // Adobe XD layer: 'Application-2' (group)
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      region: Offset(14.0, 14.9) & Size(103.0, 17.0),
                      child: Stack(
                        children: <Widget>[
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
                            child: Text(
                              'Re-Type Password',
                              style: TextStyle(
                                fontFamily: 'SegoeUI',
                                fontSize: 13,
                                color: const Color(0xff7c8085),
                                height: 1.200000029343825,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(66.44, 251.33),
              child:
              // Adobe XD layer: 'Application-3' (group)
              BlendMask(
                blendMode: BlendMode.srcOver,
                opacity: 1,
                region: Offset(66.4, 251.3) & Size(214.0, 33.0),
                child: Stack(
                  children: <Widget>[
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      child: Text(
                        'Create a password',
                        style: TextStyle(
                          fontFamily: 'SegoeUI-Bold',
                          fontSize: 25,
                          color: const Color(0xffffffff),
                          height: 1.2000000762939453,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(349.39, 394.83),
              child:
              // Adobe XD layer: 'Group 200' (group)
              SvgPicture.string(
                _shapeSVG_30864ca5c71840cc9184dbec006e67b8,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(354.43, 394.83),
              child:
              // Adobe XD layer: 'Group 200' (group)
              Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(8.0, 4.0),
                    child:
                    // Adobe XD layer: 'Ellipse 134' (shape)
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(5.0, 5.0)),
                        color: const Color(0xff434b56),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(349.39, 485.54),
              child:
              // Adobe XD layer: 'Group 201' (group)
              Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(8.0, 4.0),
                    child:
                    // Adobe XD layer: 'Ellipse 134-2' (shape)
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(5.0, 5.0)),
                        color: const Color(0xff434b56),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(67.69, 306.62),
              child:
              // Adobe XD layer: 'Application-4' (group)
              BlendMask(
                blendMode: BlendMode.srcOver,
                opacity: 1,
                region: Offset(67.7, 306.6) & Size(257.0, 38.0),
                child: Stack(
                  children: <Widget>[
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      child: Text(
                        'Your password must include at least one',
                        style: TextStyle(
                          fontFamily: 'SegoeUI',
                          fontSize: 14,
                          color: const Color(0xffffffff),
                          height: 1.2000000817435128,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0.0, 19.0),
                      child: BlendMask(
                        blendMode: BlendMode.srcOver,
                        opacity: 1,
                        child: Text(
                          'symbol and be 8 or more characters long.',
                          style: TextStyle(
                            fontFamily: 'SegoeUI',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            height: 1.2000000817435128,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _shapeSVG_30864ca5c71840cc9184dbec006e67b8 =
    '<svg viewBox="349.4 394.8 31.1 108.7" ><g transform="translate(354.43, 394.83)"><path transform="translate(-1449.46, -377.06)" d="M 1462.468017578125 395.06201171875 C 1456.780029296875 395.135986328125 1451.635009765625 391.6960144042969 1449.527954101563 386.4119873046875 C 1449.443969726563 386.18701171875 1449.443969726563 385.93798828125 1449.527954101563 385.7120056152344 C 1451.635009765625 380.4280090332031 1456.780029296875 376.989013671875 1462.468017578125 377.06201171875 C 1468.156005859375 376.989013671875 1473.301025390625 380.4280090332031 1475.407958984375 385.7120056152344 C 1475.491943359375 385.93798828125 1475.491943359375 386.18701171875 1475.407958984375 386.4119873046875 C 1473.301025390625 391.6960144042969 1468.156005859375 395.135986328125 1462.468017578125 395.06201171875 Z M 1451.547973632813 386.06201171875 C 1453.4580078125 390.3720092773438 1457.755004882813 393.1260070800781 1462.468017578125 393.06201171875 C 1467.181030273438 393.1260070800781 1471.47802734375 390.3720092773438 1473.387939453125 386.06201171875 C 1471.47802734375 381.7529907226563 1467.181030273438 378.9989929199219 1462.468017578125 379.06201171875 C 1457.755004882813 378.9989929199219 1453.4580078125 381.7529907226563 1451.547973632813 386.06201171875 Z" fill="#434b56" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></g><g transform="translate(349.39, 485.54)"><path transform="translate(-1444.46, -465.98)" d="M 1457.468017578125 483.9769897460938 C 1451.780029296875 484.0499877929688 1446.635009765625 480.6109924316406 1444.527954101563 475.3269958496094 C 1444.443969726563 475.1010131835938 1444.443969726563 474.8519897460938 1444.527954101563 474.6270141601563 C 1446.635009765625 469.3429870605469 1451.780029296875 465.9030151367188 1457.468017578125 465.9769897460938 C 1463.156005859375 465.9030151367188 1468.301025390625 469.3429870605469 1470.407958984375 474.6270141601563 C 1470.491943359375 474.8519897460938 1470.491943359375 475.1010131835938 1470.407958984375 475.3269958496094 C 1468.301025390625 480.6109924316406 1463.156005859375 484.0499877929688 1457.468017578125 483.9769897460938 Z M 1446.547973632813 474.9769897460938 C 1448.4580078125 479.2860107421875 1452.755004882813 482.0409851074219 1457.468017578125 481.9769897460938 C 1462.181030273438 482.0409851074219 1466.47802734375 479.2860107421875 1468.387939453125 474.9769897460938 C 1466.47802734375 470.6669921875 1462.181030273438 467.9129943847656 1457.468017578125 467.9769897460938 C 1452.755004882813 467.9129943847656 1448.4580078125 470.6669921875 1446.547973632813 474.9769897460938 Z" fill="#434b56" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></g></svg>';
