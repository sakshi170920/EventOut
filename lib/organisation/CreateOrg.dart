import 'package:flutter/material.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'AddMember.dart';

const String basic_url = 'https://eventzy123.000webhostapp.com';
String owner = "";

class CreateOrg extends StatefulWidget {
  @override
  _CreateOrgState createState() => _CreateOrgState();
}

class _CreateOrgState extends State<CreateOrg> {
  TextEditingController _orgName = new TextEditingController();
  TextEditingController _orgDescription = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<Null> getSharedPrefs() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String owner = prefs.getString("FirstName") + prefs.getString("LastName");
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Organisation"),
        actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Org Name"),
            TextField(
              textAlign: TextAlign.center,
              controller: _orgName,
            ),
            Text("description"),
            TextField(
              textAlign: TextAlign.center,
              controller: _orgDescription,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMember()),
                );
                FutureBuilder(
                  future: CreateOrg(_orgName.text, _orgDescription.text, owner),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == false) {
                      print(false);
                    } else {
                      print(true);
                      return Text("true");
                    }
                  },
                );
              },
              child: Text("Create Organizaton"),
            ),
          ],
        ),
      ),
    );
  }

  Future getData() async {
    var url = basic_url + "/getData.php";
    http.Response response = await http.get(url);
    print("respomce");
    print(response.body);
    var data = jsonDecode(response.body);
    print("sql data");
    print(data.toString());
  }

  Future<bool> CreateOrg(
      String org_name, String description, String owner) async {
    var url = '$basic_url/postData.php';
    http.Response response = await http.post(url, body: {
      'org_name': org_name,
      'description': description,
      'owner': owner
    });
    print("sdfasfxz");
    var data = response.body;
    print(data);
    print("sdf");
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }
}
