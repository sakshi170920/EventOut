import 'package:EventOut/MainPage/OrganizationClass.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';

import 'OrganizationInnerListView.dart';

class OrganizationPageMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OrganizationClass org_info =
        ModalRoute.of(context).settings.arguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: OrganisationPageAppBar(),
      body: Stack(
        children: <Widget>[
          DarkBlueBG(
            size: size,
          ),
          LightPurpleBG(size: size),
          WhiteBG(size: size, org_info: org_info)
        ],
      ),
    );
  }
}

class WhiteBG extends StatelessWidget {
  final OrganizationClass org_info;

  const WhiteBG({
    Key key,
    @required this.size,
    @required this.org_info,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(105))),
      child: Container(
        //decoration: BoxDecoration(color: Colors.blue),
        child: Row(
          children: <Widget>[
            Container(
                //decoration: BoxDecoration(color: Colors.pink),
                padding: EdgeInsets.only(
                    left: size.width * 0.12, top: size.height * 0.03),
                child: CircleAvatar(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0, bottom: 18),
                    child: IconButton(
                        icon: Icon(
                          Icons.add_a_photo,
                          size: 50,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                  backgroundImage: AssetImage("assets/images/back.jpeg"),
                  maxRadius: 55,
                )),
            Container(
                padding: EdgeInsets.only(
                    top: constPadding * 4, left: constPadding / 2),
                //decoration: BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 180,
                        //decoration: BoxDecoration(color: Colors.pink),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          org_info.org_name.toUpperCase(),
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: 180,
                          padding: EdgeInsets.only(top: constPadding / 4),
                          alignment: Alignment.topLeft,
                          //decoration: BoxDecoration(color: Colors.red),
                          child: Text(
                            org_info.description,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class LightPurpleBG extends StatelessWidget {
  const LightPurpleBG({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.39,
      decoration: BoxDecoration(
          color: Color(0xff8A56AC),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Container(
        //decoration: BoxDecoration(color: Colors.pink),
        child: Padding(
          padding: const EdgeInsets.only(top: constPadding * constPadding / 2),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                    left: constPadding * 2.5, top: constPadding / 4),
                //decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: <Widget>[
                    Text(
                      "12",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Teammates",
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      left: constPadding * 2, bottom: constPadding / 2),
                  //decoration: BoxDecoration(color: Colors.red),
                  child: SizedBox(
                    width: constPadding * 10,
                    height: constPadding * 3,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 10,
                      color: Colors.white,
                      colorBrightness: Brightness.light,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(70.0),
                      ),
                      child: Container(
                        //decoration: BoxDecoration(color: Colors.red),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Container(
                                //decoration: BoxDecoration(color: Colors.blue),
                                child: Center(
                                  child: IconButton(
                                      alignment: Alignment.centerLeft,
                                      icon: Icon(
                                        Icons.add_box,
                                        color: Color(0xff8A56AC),
                                        size: 25,
                                      ),
                                      onPressed: () {}),
                                ),
                              ),
                              Container(
                                //decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                  child: Text(
                                    "ADD A MATE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff8A56AC),
                                        fontSize: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class DarkBlueBG extends StatelessWidget {
  const DarkBlueBG({
    Key key,
    @required this.size,
  }) : super(key: key);

  //const DarkBlueBG({Key key}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff241332),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity * 0.1,
        alignment: Alignment.bottomCenter,
        //decoration: BoxDecoration(color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.only(
              top: constPadding * 12, left: constPadding * 2),
          child: Container(
            //decoration: BoxDecoration(color: Colors.green),
            child: ListView.builder(
                //shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return OrganizationInnerListView();
                }),
          ),
        ),
      ),
    );
  }
}

AppBar OrganisationPageAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      margin: EdgeInsets.only(left: constPadding / 2, top: constPadding / 5),
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Container(
            margin:
                EdgeInsets.only(top: constPadding / 5, right: constPadding / 2),
            child: Icon(Icons.network_wifi)),
        onPressed: () {},
        color: Colors.black,
      )
    ],
  );
}
