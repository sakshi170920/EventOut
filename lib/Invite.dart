import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Invite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff101010),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(

                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(

                    margin: EdgeInsets.all(30),
                    alignment: Alignment.center,
                    child: Text("Add some teammates to \nwork with you", style: TextStyle(
                      fontFamily: 'MyriadPro-Regular',
                      fontSize: 18,
                      color: Colors.white54,


                    ),
                      textAlign: TextAlign.center,

                    ),
                  ),
                )
                ,
                Expanded(
                  flex: 7,
                  child: Container(

                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurpleAccent,

                    ),
                    child: Center(
                      child: FlatButton(
                        onPressed: (){

                        },
                        child: Text(
                          "Invite by Email"
                          ,style: TextStyle(
                          fontFamily: 'MyriadPro-Regular',
                          fontSize: 20,
                          color: const Color(0xff000000),
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(15),

                    child: Center(
                      child: FlatButton(
                        onPressed: (){

                        },
                        child: Text(
                          "Invite Contacts"
                          ,style: TextStyle(
                          fontFamily: 'MyriadPro-Regular',
                          fontSize: 20,
                          color: Colors.white38,
                        ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
