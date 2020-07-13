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
      height: 130,
      margin: EdgeInsets.symmetric(
          horizontal: constPadding * 1.8, vertical: constPadding / 2),
      //color: Colors.blueAccent,
      decoration: BoxDecoration(
          //color: Colors.blueAccent,
          ),
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
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: constPadding / 2, right: constPadding * 3),
                    child: Text(
                      "TedX Vit Pune,India.",
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.6),
                    thickness: 2,
                    indent: 40,
                    endIndent: 70,
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: constPadding, top: constPadding / 2),
                    child: Row(
                      //ROw
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          //decoration: BoxDecoration(color: Colors.blue),
                          child: IconButton(
                              icon: Icon(Icons.assignment_return),
                              color: Colors.purple,
                              autofocus: true,
                              highlightColor: Colors.red,
                              iconSize: 30,
                              onPressed: () {}),
                        ),
                        Container(
                          width: 80,
                          //decoration: BoxDecoration(color: Colors.green),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  //padding: const EdgeInsets.only(right: 20),
                                  child: Expanded(
                                    child: Text(
                                      "Assign Work",
                                    ),
                                  ),
                                ),
                                Container(
                                  //decoration: BoxDecoration(color: Colors.pink),
                                  padding: const EdgeInsets.only(
                                      right: constPadding * 0.75),
                                  child: Expanded(
                                    child: Text(
                                      '21 assigned',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            //decoration: BoxDecoration(color: Colors.blue),
                            margin: EdgeInsets.only(right: 1),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                  icon: Icon(Icons.chat), onPressed: () {}),
                            )),
                        Container(
                          //decoration: BoxDecoration(color: Colors.deepOrange),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.only(right: constPadding + 10),
                                  //decoration:BoxDecoration(color: Colors.brown),
                                  child: Text(
                                    "Chat",
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(right: constPadding / 4),
                                  child: Text(
                                    "12 Unread",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  ),
                                )
                              ],
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
        ],
      ),
    );
  }
}

Positioned p() {
  return Positioned(
      top: 0,
      left: 0,
      child: SizedBox(
        height: 100,
        //width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: constPadding * 1.3, vertical: constPadding / 2),
              child: Text(
                "TedX Vit Pune,India.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
              ],
            )
          ],
        ),
      ));
}
