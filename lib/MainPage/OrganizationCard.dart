import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OrganizationClass.dart';

const String basic_url = 'https://eventzy123.000webhostapp.com';

class OrganizationCard extends StatelessWidget {
  final String orgId, orgName, description, owner;
  final bool permission;

  const OrganizationCard({
    this.orgId,
    this.orgName,
    this.description,
    this.owner,
    this.permission,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    OrganizationClass temp = new OrganizationClass(
        this.orgId, this.orgName.toUpperCase(), this.description, this.owner,this.permission);
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 200,
//                    decoration: BoxDecoration(color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: constPadding, right: constPadding),
                        child: GestureDetector(
                          onTap: () {
                            navigationToOrganizationPageMainBody(context, temp);

                          },
                          child: Text(
                            orgName.toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Divider(
                      color: Colors.grey.withOpacity(0.6),
                      thickness: 2,
                      indent: 40,
                      endIndent: 70,
                      height: 15,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: constPadding, top: constPadding / 4),
                      child: Row(
                        //ROW
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //ROW of Assigning work - icon + column
                          Expanded(
                            child: Row(

                              children: [
                                Expanded(
                              flex: 2,
                              child: Container(
                                //decoration: BoxDecoration(color: Colors.blue),
                                child: IconButton(
                                    icon: Icon(Icons.assignment_return),
                                    color: Colors.purple,
                                    autofocus: true,
                                    highlightColor: Colors.red,
                                    iconSize: 30,
                                    onPressed: () {}),
                              ),
                            ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: 80,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            decoration:
                                            BoxDecoration(color: Colors.white),
                                            //padding: const EdgeInsets.only(right: 20),
                                            child: Text(
                                              "Assign Work",
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            //decoration: BoxDecoration(color: Colors.pink),
                                            padding: const EdgeInsets.only(
                                                right: constPadding * 0.75),
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
                              ),
                            ],
                            ),
                          ),
                          //ROW of Chat - icon + column
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: (){
                                  navigateToContactList( context );
                                },
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                  child: Container(
                                    //decoration: BoxDecoration(color: Colors.blue),
                                      child: IconButton(
                                          icon: Icon(Icons.chat),
                                          onPressed: () {

                                          },
                                          ),
                                  ),
                                ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              padding:
                                              EdgeInsets.only(right: constPadding + 10),
                                              //decoration:BoxDecoration(color: Colors.brown),
                                              child: Text(
                                                "Chat",
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.only(right: constPadding / 4),
                                              child: Text(
                                                "12 Unread",
                                                style: TextStyle(
                                                    fontSize: 11, color: Colors.grey),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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