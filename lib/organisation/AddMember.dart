import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

String name = "tarun".hashCode.toString(); //share refrence
const String org_name = "TRF"; //share refrence

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  final dbref = FirebaseDatabase.instance.reference().child('invites');
  TextEditingController _member_name = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<Null> getSharedPrefs() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String name =
          prefs.getString("FirstName") + " " + prefs.getString("LastName");
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Member"),
      ),
      body: Column(
        children: <Widget>[
          StreamBuilder(
            stream: dbref.onValue,
            builder: (context, snap) {
              int x = 1;
              if (snap.hasData &&
                  !snap.hasError &&
                  snap.data.snapshot.value != null) {
                Map data = snap.data.snapshot.value;

                data.forEach((key, value) {
                  print("key " + key);
                  if (key == name) {
                    x = 0;
                  } else {
                    x = x * 1;
                  }
                });
                print(data);
              }
              if (x == 0) {
                Future.delayed(const Duration(milliseconds: 100), () {
                  final snackBar =
                      SnackBar(content: Text('you have an invitation'));
                  Scaffold.of(context)
                      .showSnackBar(snackBar); // show the Snackbar
                  deleteInvite(name);
                  _bottomSheet(context);
                });
                return Text("You have invitaion");
              } else {
                return Text("");
              }
            },
          ),
          Text("Invite Name of Member"),
          TextField(
            textAlign: TextAlign.center,
            controller: _member_name,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text('write'),
            onPressed: () {
              dbref
                  .child(_member_name.text.hashCode.toString())
                  .set({'from': name, 'org_id': org_name});
            },
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text('read'),
            onPressed: () {
              //ReadData();
              dbref.once().then((DataSnapshot datasnapshot) {
                print(datasnapshot.value);
                datasnapshot.value.forEach((key, value) {
                  if (key == name) {
                    print('found the invitation');
                  }

                  print(key);
                });
              });
            },
          )
        ],
      ),
    );
  }

  void deleteInvite(String child_name) async {
    await dbref.child(child_name).remove().then((_) {
      print('Deleted  ' + child_name);
    });
  }

  void _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'You have Invitation',
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.check_circle),
                    onPressed: () {} //accept button for invitation,
                    ),
                IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      Navigator.of(context).pop();
                    } //accept button for invitation,
                    ),
              ],
            ),
            height: MediaQuery.of(context).size.height * .40,
          );
        });
  }
}
