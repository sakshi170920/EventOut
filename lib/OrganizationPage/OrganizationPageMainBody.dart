import 'dart:convert';

import 'package:EventOut/LoginDatabase/LoginDetails.dart';
import 'package:EventOut/MainPage/OrganizationClass.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:EventOut/organisation/AddMember.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'OrganizationInnerListView.dart';

//const String basic_url = 'https://eventzy123.000webhostapp.com';

TextEditingController _name = new TextEditingController();
TextEditingController _desp = new TextEditingController();
String universalId = "";

class OrganizationPageMainBody extends StatefulWidget {
  static String id = 'OrganizationPageMainBody';
  @override
  _OrganizationPageMainBodyState createState() =>
      _OrganizationPageMainBodyState();
}

class _OrganizationPageMainBodyState extends State<OrganizationPageMainBody> {

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final OrganizationClass orgInfo =
        ModalRoute.of(context).settings.arguments;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: organisationPageAppBar(),
      body: Stack(
        children: <Widget>[
          DarkBlueBG(
            size: size,
          ),
          LightPurpleBG(size: size),
          WhiteBG(size: size, orgInfo: orgInfo),
          Align(
            alignment: Alignment.bottomLeft,
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                if (value == true) {
                  print(_name.text);
                  print(_desp.text + "sd.mgajksDNGKJHwekjghaw");
                  isSwitched = true;
                  //permission = false;
                  //first_time = true;
                  orgInfo.description = _desp.text;
                  orgInfo.orgName = _name.text;
                  orgInfo.permission = false;
                  setState(() {});
                  FutureBuilder(
                    future: getOrgID(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data == false) {
                        print(false);
                        print("Not executed Query");
                        return Container();
                      } else {
                        print(true);
                        print("Executed query");
                        print("ID generated +" + snapshot.data);
                        orgInfo.orgId = snapshot.data - 1;
                        universalId = orgInfo.orgId;
                        return Text("true");
                      }
                    },
                  );
                  FutureBuilder(
                    future: postOrg(orgInfo.orgId, orgInfo.orgName,
                        orgInfo.description, "Username"),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data == false) {
                        print(false);
                        print("Not executed Query");
                        return CircularProgressIndicator();
                      } else {
                        print(true);
                        print("Executed query");
                        return Text("true");
                      }
                    },
                  );
                }
                print(value);
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(_name.text);
        print(_desp.text);
      }),
    );
  }

  Future<String> getOrgID() async {
    var url = basic_url + "/getOrganisationID.php";
    http.Response response = await http.get(url);
    print("respomce");
    print(response.body);
    var data = jsonDecode(response.body);
    print("sql data");
    print(data.toString());
    if (response.statusCode == 200) {
      return data.toString();
    } else
      return "false";
  }

  Future<bool> postOrg(
      String orgId, String orgName, String description, String owner) async {
    var url = basic_url + "/postOrganization.php";
    http.Response response = await http.post(url, body: {
      //'from_id': "sakshi.oswal18@vit.edu",
      //'to_id': "oswalsakshi17@gamil.com",
      //'title': "enventzy",
      //'description': "The organization managing app",
      //'due_date': "2020-11-26",
      //'email': "jag@gmail.com",
      'org_id': orgId,
      'org_name': orgName,
      'description': description,
      'owner': owner
    });
    //print("sdfasfxz");
    var data = response.body;
    print(response);
    print(data);
    print("post");
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }
}

Future<bool> postBelongsTo(
    String username, String id, String priority, String role) async {
  var url = basic_url + "/postBelongsto.php";
  http.Response response = await http.post(url, body: {
    'email': username,
    'org_id': id,
    'priority': priority,
    'role': role
  });
  //print("sdfasfxz");
  var data = response.body;
  print(response);
  print(data);
  print("post");
  print(response.statusCode);
  if (response.statusCode == 200) {
    return true;
  } else
    return false;
}

void _editbottommodalsheet(context, String id) {
  TextEditingController _username = new TextEditingController();
  TextEditingController _rolename = new TextEditingController();
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 45,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                TextField(
                  controller: _username,
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: "User Name",
                  ),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  controller: _rolename,
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: "Role Name",
                  ),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    FutureBuilder(
                      future: postBelongsTo(
                          _username.text, id, "999", _rolename.text),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.data == false) {
                          print(false);
                          print("Not executed Query");
                          return CircularProgressIndicator();
                        } else {
                          print(true);
                          print("Executed query");
                          return Text("true");
                        }
                      },
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddMember()),
                    );
                  },
                  child: Text("Add user"),
                )
              ],
            ),
          ),
        );
      });
}

class WhiteBG extends StatefulWidget {
  final OrganizationClass orgInfo;

  const WhiteBG({
    Key key,
    @required this.size,
    @required this.orgInfo,
  }) : super(key: key);

  final Size size;

  @override
  _WhiteBGState createState() => _WhiteBGState();
}

class _WhiteBGState extends State<WhiteBG> {
  @override
  Widget build(BuildContext context) {
    print(widget.orgInfo.permission);
    if (widget.orgInfo.permission == true) {
      if (widget.orgInfo.orgId == "007") {
        _name.text = "Name";
        _desp.text = "description";
      }
      print(
          "SkjnFKNEKSDJGkje ksJDBHVtiufbwyaejnvtkubyeruhdjgbviueisntoihbtiawjenjvogniaejgo\nwakekwanheknhtw\nwsjkhknkjbthibuhsng");
    } else if (widget.orgInfo.permission == false) {
      _name.text = widget.orgInfo.orgName;
      _desp.text = widget.orgInfo.description;
      print("wlse if of second");
    }
    return Container(
      width: double.infinity,
      height: widget.size.height * 0.25,
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
                    left: widget.size.width * 0.12,
                    top: widget.size.height * 0.03),
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
                    top: constPadding * ((widget.orgInfo.permission) ? 3 : 4),
                    left: constPadding / 2),
                //decoration: BoxDecoration(color: Colors.blue),
                alignment: Alignment.topCenter,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 180,
                            //decoration: BoxDecoration(color: Colors.pink),
                            alignment: Alignment.bottomLeft,
                            // child: Text(
                            //   org_info.org_name.toUpperCase(),
                            //   style: TextStyle(
                            //     fontSize: 25,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            child: (widget.orgInfo.permission)
                                ? TextField(
                                    controller: _name,
                                    onChanged: (value) {
                                      print(value);
                                      widget.orgInfo.orgId = "006";
                                    },
                                    onSubmitted: (value) {
                                      print("submited vaklue " + value);
                                      _name.text = value;
                                      widget.orgInfo.orgId = "006";
                                      setState(() {});
                                    },
                                    onTap: () {},
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            top: -5, left: -2,),
                                        border: InputBorder.none,
                                        hintText: "Enter name",
                                        fillColor: Colors.red),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Text(
                                    widget.orgInfo.orgName,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: 180,
                              padding: EdgeInsets.only(top: constPadding / 4),
                              alignment: Alignment.topLeft,
                              //decoration: BoxDecoration(color: Colors.red),
                              // child: Text(
                              //   org_info.description,
                              //   style: TextStyle(color: Colors.grey),
                              // ),
                              child: (widget.orgInfo.permission)
                                  ? Container(
                                    child: TextField(
                                        controller: _desp,
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.only(top: -25, left: -2),
                                            border: InputBorder.none,
                                            hintText: "Enter description"),
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                  )
                                  : Text(
                                      widget.orgInfo.description,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    //_name.dispose();
    //_desp.dispose();
  }
}

class LightPurpleBG extends StatefulWidget {
  const LightPurpleBG({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _LightPurpleBGState createState() => _LightPurpleBGState();
}

class _LightPurpleBGState extends State<LightPurpleBG> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.size.height * 0.39,
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
                    left: constPadding * 2.5, top: constPadding*1.6),
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
                    Text(
                      "Teammates",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
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
                      onPressed: () {
                        _editbottommodalsheet(context, universalId);
                      },
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
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(
                                      "ADD A MATE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff8A56AC),
                                          fontSize: 15),
                                    ),
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

AppBar organisationPageAppBar() {
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
