import 'package:flutter/material.dart';
import 'package:EventOut/LoginDatabase/LoginDetails.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
class Name extends StatefulWidget {

  @override
  _NameState createState() => _NameState();

}

class _NameState extends State<Name> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff101010),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(

                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  child: Text("Complete your profile", style: TextStyle(
                    fontFamily: 'MyriadPro-Regular',
                    fontSize: 25,
                    color: Colors.white54,


                  ),
                    textAlign: TextAlign.center,

                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(

                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: Text("First Name", style: TextStyle(
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 15,
                  color: Colors.white54,
                ),

                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: TextField(
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                        onChanged: (name) async {
                          await setFirstName(name);

                        },
                        decoration: InputDecoration(

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )
                    ),
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: Text("Last Name", style: TextStyle(
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 15,
                  color: Colors.white54,

                ),


                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: TextField(
                      onChanged: (name) async {
                        await setLastName(name);
                      },
                        cursorColor: Colors.white,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                        decoration: InputDecoration(

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )
                    ),
                  ),

                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(50),

                  child: Text("By clicking next you accept the Terms of Services and Privacy Policy",
                    style: TextStyle(
                      fontFamily: 'MyriadPro-Regular',
                      fontSize: 12,
                      color: Colors.white54,



                    ),
                    textAlign: TextAlign.center,

                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(

                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
