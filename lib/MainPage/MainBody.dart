import 'package:flutter/material.dart';
import 'package:EventOut/MainPage/OrganizationCard.dart';
import 'package:EventOut/MainPage/OrganizationClass.dart';
import 'package:EventOut/MainPage/body.dart';
import 'package:EventOut/constants/constants.dart';
class MainBody extends StatefulWidget {
  static String id = 'MainBody';

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/MP_bg.jpeg'),
                  fit: BoxFit.cover),
            ), //BACKGROUND IMAGE
          ),
          Column(children: <Widget>[
            SizedBox(
              height: constPadding * 5,
            ),
            Expanded(
                child: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) => OrganizationCard()),
                  )
                ],
              ),
            )),
          ])
        ],
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
        margin: EdgeInsets.only(left: constPadding, top: constPadding),
        child: Icon(Icons.drag_handle)),
    actions: <Widget>[
      Container(
          margin: EdgeInsets.only(right: constPadding, top: constPadding),
          child: IconButton(icon: Icon(Icons.search), onPressed: () {})),
    ],
    title: Container(
      margin: EdgeInsets.only(top: constPadding),
      child: Text("EventOut",
          style: TextStyle(
            fontSize: 35,
          )),
    ),
    centerTitle: true,
  );
}
