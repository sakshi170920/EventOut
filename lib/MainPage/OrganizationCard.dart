import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:EventOut/MainPage/OrganizationClass.dart';

class OrganizartionCard extends StatelessWidget {
  final String org_id, org_name, description, owner;

  const OrganizartionCard({
    this.org_id,
    this.org_name,
    this.description,
    this.owner,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(
          horizontal: constPadding * 1.8, vertical: constPadding / 2),
      //color: Colors.blueAccent,
      decoration: BoxDecoration(
        color: Color(0XFF8A56AC).withOpacity(0.4),
        boxShadow: [constShadow],
        borderRadius: BorderRadius.circular(constPadding * 2.5),
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
                  Container(
                    width: 200,
//                    decoration: BoxDecoration(color: Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: constPadding, right: constPadding),
                      child: Text(
                        org_name.toUpperCase(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
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
                        left: constPadding, top: constPadding / 4),
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
