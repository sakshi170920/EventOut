import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'MainBottomPart.dart';

import 'OrganizationCard.dart';
import 'OrganizationClass.dart';

const String basic_url = 'https://eventzy123.000webhostapp.com';

List<OrganizationClass> us = [];

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    us = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Stack(
        children: <Widget>[
          MainPageBG(),
          MainPageOpacity(),
          Column(children: <Widget>[
            SizedBox(
              height: constPadding * 5.5,
            ),
            Expanded(
                child: Container(
              child: Padding(
                  padding: const EdgeInsets.only(),
                  child: FutureBuilder(
                    future: getOrganizationOfUser(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data == null) {
                        print("contaiin on ground");
                        return Center(
                            child: Container(
                          child: CircularProgressIndicator(),
                        ));
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext contxt, int index) {
                            print("listview on ground");
                            return OrganizartionCard(
                                org_id: snapshot.data[index].org_id,
                                org_name: snapshot.data[index].org_name,
                                description: snapshot.data[index].description,
                                owner: snapshot.data[index].owner);
                          },
                        );
                      }
                    },
                  )),
            )),
            MainBottomPart()
          ]),
        ],
      ),
    );
  }

  Future<List<OrganizationClass>> getOrganizationOfUser() async {
    var url = basic_url + "/getOrganisationOfUser.php";
    http.Response response = await http.get(url);
    print("respomce");
    print(response.body);
    //OrganizationClass a=new OrganizationClass(org_id, org_name, description, owner)
    var data = jsonDecode(response.body);
    List<OrganizationClass> users = [];

    for (var x in data) {
      OrganizationClass temp = new OrganizationClass(
          x["org_id"], x["org_name"], x["description"], x["owner"]);
      users.add(temp);
    }
    print(users.length);
    return users;
  }
}

class MainPageOpacity extends StatelessWidget {
  const MainPageOpacity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XFF8A56AC).withOpacity(0.1),
      ), //BACKGROUND IMAGE
    );
  }
}

class MainPageBG extends StatelessWidget {
  const MainPageBG({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
            image: AssetImage('assets/images/back.jpeg'), fit: BoxFit.cover),
      ), //BACKGROUND IMAGE
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
          decoration: BoxDecoration(
              color: Color(0xFF8A56AC),
              borderRadius: BorderRadius.circular(500)),
          margin: EdgeInsets.only(right: constPadding, top: constPadding),
          alignment: Alignment.center,
          child: IconButton(icon: Icon(Icons.search), onPressed: () {})),
    ],
    title: Container(
      margin: EdgeInsets.only(top: constPadding),
      child: Text("EvenOut",
          style: TextStyle(
            fontSize: 35,
          )),
    ),
    centerTitle: true,
  );
}
