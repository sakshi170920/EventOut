import 'package:flutter/material.dart';
import 'package:mainpage_eventout/MainPage/constant.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: constPadding,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blueAccent),
          margin: EdgeInsets.symmetric(
              horizontal: constPadding, vertical: constPadding / 2),
          height: 160,
          child: Stack(
            children: <Widget>[
              Container(
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(constPadding * 2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
