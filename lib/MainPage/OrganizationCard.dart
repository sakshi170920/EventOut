import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';


import 'package:EventOut/MainPage/OrganizationClass.dart';

class OrganizartionCard extends StatelessWidget {
  const OrganizartionCard({
    Key key,
    this.itemIndex,
    this.og,
  }) : super(key: key);

  final int itemIndex;
  final OrganizationClass og;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(
          horizontal: constPadding * 1.8, vertical: constPadding / 2),
      //color: Colors.blueAccent,
      decoration: BoxDecoration(),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 130,
            decoration: BoxDecoration(
                boxShadow: [constShadow],
                //color: Colors.pink,
                borderRadius: BorderRadius.circular(constPadding * 2.5)),
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(constPadding * 2.2)),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                height: 90,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: constPadding * 1.3,
                          vertical: constPadding / 2),
                      child: Text(
                        "TedX Vit Pune,India.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.6),
                      thickness: 2,
                      indent: 30,
                      endIndent: 100,
                      height: 1,
                    ),
                    Spacer(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
