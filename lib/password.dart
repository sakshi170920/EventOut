import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Artboard1 extends StatelessWidget {
  Artboard1({
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
              image: const AssetImage('assets/bg1.gif'),
              fit: BoxFit.fill,
            ),
          ),
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(-89.21, 0.5),
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-75.79, -0.5),

                  ),
                  Transform.translate(
                    offset: Offset(143.38, 220.88),
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
                    offset: Offset(153.49, 335.58),
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
                          offset: Offset(14.0, 16.0),
                          child:
                          // Adobe XD layer: 'Application' (group)
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
                            region: Offset(14.0, 16.0) & Size(31.0, 17.0),
                            child: Stack(
                              children: <Widget>[
                                BlendMask(
                                  blendMode: BlendMode.srcOver,
                                  opacity: 1,
                                  child: Text(
                                    'Email',
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
                    offset: Offset(282.29, 268.9),
                    child:
                    // Adobe XD layer: 'Application-2' (group)
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      region: Offset(282.3, 268.9) & Size(66.0, 33.0),
                      child: Stack(
                        children: <Widget>[
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
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
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(156.11, 59.44),
                    child:
                    // Adobe XD layer: 'noun back 1249380' (group)
                    SvgPicture.string(
                      _shapeSVG_869fe37ca18e4465ba974cd24e5b0f56,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(153.49, 402.2),
                    child:
                    // Adobe XD layer: 'Group 266' (group)
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
                          // Adobe XD layer: 'Application-3' (group)
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
                    offset: Offset(458.0, 418.19),
                    child:
                    // Adobe XD layer: 'Group 267' (group)
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
                    offset: Offset(166.45, 466.63),
                    child:
                    // Adobe XD layer: 'Application-4' (group)
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      region: Offset(166.4, 466.6) & Size(110.0, 19.0),
                      child: Stack(
                        children: <Widget>[
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontFamily: 'SegoeUI',
                                fontSize: 14,
                                color: const Color(0xff000000),
                                height: 1.2000000817435128,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(215.49, 537.08),
                    child:
                    // Adobe XD layer: 'Application-5' (group)
                    BlendMask(
                      blendMode: BlendMode.srcOver,
                      opacity: 1,
                      region: Offset(215.5, 537.1) & Size(197.5, 19.0),
                      child: Stack(
                        children: <Widget>[
                          BlendMask(
                            blendMode: BlendMode.srcOver,
                            opacity: 1,
                            child: Text(
                              'Don\'t have an account? ',
                              style: TextStyle(
                                fontFamily: 'SegoeUI',
                                fontSize: 14,
                                color: const Color(0xff000000),
                                height: 1.2000000817435128,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(148.49, 0.0),
                            child: BlendMask(
                              blendMode: BlendMode.srcOver,
                              opacity: 1,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'SegoeUI',
                                  fontSize: 14,
                                  color: const Color(0xff000000),
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
          ],
        ),
      ),
    );
  }
}

const String _shapeSVG_869fe37ca18e4465ba974cd24e5b0f56 =
    '<svg viewBox="156.1 59.4 327.9 376.7" ><g transform="translate(156.11, 59.44)"><path transform="translate(-152.14, -59.44)" d="M 164.1940002441406 59.95500183105469 C 163.5119934082031 59.27199935913086 162.4049987792969 59.27199935913086 161.7220001220703 59.95399856567383 L 161.7209930419922 59.95500183105469 L 152.6540069580078 69.02500152587891 C 151.9730072021484 69.70700073242188 151.9730072021484 70.81300354003906 152.6540069580078 71.49500274658203 L 161.7239990234375 80.56500244140625 C 162.3919982910156 81.26200103759766 163.4980010986328 81.28600311279297 164.1950073242188 80.61799621582031 C 164.8930053710938 79.95099639892578 164.9170074462891 78.84400177001953 164.2489929199219 78.14700317382813 C 164.2319946289063 78.12899780273438 164.2149963378906 78.11199951171875 164.1970062255859 78.09500122070313 L 156.3589935302734 70.26000213623047 L 164.1940002441406 62.42499923706055 C 164.875 61.74300003051758 164.875 60.63700103759766 164.1940002441406 59.95500183105469 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></g><g transform="translate(458.0, 418.19)"><path transform="translate(-448.7, -414.44)" d="M 461.7080078125 432.4429931640625 C 456.0199890136719 432.5159912109375 450.875 429.0769958496094 448.7680053710938 423.7929992675781 C 448.6839904785156 423.5669860839844 448.6839904785156 423.3190002441406 448.7680053710938 423.0929870605469 C 450.875 417.8089904785156 456.0199890136719 414.3699951171875 461.7080078125 414.4429931640625 C 467.39599609375 414.3699951171875 472.5409851074219 417.8089904785156 474.6480102539063 423.0929870605469 C 474.7319946289063 423.3190002441406 474.7319946289063 423.5669860839844 474.6480102539063 423.7929992675781 C 472.5409851074219 429.0769958496094 467.39599609375 432.5159912109375 461.7080078125 432.4429931640625 Z M 450.7879943847656 423.4429931640625 C 452.697998046875 427.7520141601563 456.9949951171875 430.5069885253906 461.7080078125 430.4429931640625 C 466.4209899902344 430.5069885253906 470.7179870605469 427.7520141601563 472.6279907226563 423.4429931640625 C 470.7179870605469 419.1329956054688 466.4209899902344 416.3789978027344 461.7080078125 416.4429931640625 C 456.9949951171875 416.3789978027344 452.697998046875 419.1329956054688 450.7879943847656 423.4429931640625 Z" fill="#434b56" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></g></svg>';
