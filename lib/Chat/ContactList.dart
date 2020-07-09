import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/NavigationMethods.dart';
List<String> listClubs = ['Tedx','MSPC' , 'MUN' , 'VC'];
List<String> listEvents = ['Event1' , 'Event2','Event3'];

List<String> listMembers = ['oswal@gmail.com','oswalsakshi17@gmail.com','sakshi.oswal18@vit.edu','mark@gmail.com'];

class ClubList extends StatefulWidget {
  static String id = 'ClubList';

  @override
  _ClubListState createState() => _ClubListState();
}

class _ClubListState extends State<ClubList> {
  
  Widget build(BuildContext context)  {

    return  Container(
      child: ListView.builder(
        reverse: true,
        itemBuilder: (BuildContext context , int index){
          return GestureDetector(
            onTap: (){
              navigateToChatRoom(context: context , group: listClubs[index] , subGroupId: null , type: ChatType.GROUP);
              },
              child: Container(
                color: Colors.white70,
                  child: new Text(listClubs[index],
                  style: TextStyle(
                    color: Colors.blue, fontSize: 30,
                  ),),
              ),
          );
        },

        itemCount: listClubs.length,
      ),
    );
  }
}
class EventList extends StatelessWidget {
  static String id = 'EventList';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        reverse: true,
        itemBuilder: (BuildContext context , int index){
          return GestureDetector(
            onTap: (){
              navigateToChatRoom(context: context , group: listClubs[index] , subGroupId: null , type: ChatType.GROUP);
            },
            child: Container(
              color: Colors.white70,
              child: new Text(listClubs[index],
                style: TextStyle(
                  color: Colors.blue, fontSize: 30,
                ),),
            ),
          );
        },

        itemCount: listClubs.length,
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  static String id = 'ContactList';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: ListView.builder(
              itemBuilder: (BuildContext context , int index){
                return GestureDetector(
                  onTap: (){
                    navigateToChatRoom(context: context , group: listMembers[index] , subGroupId: 'chat' , type: ChatType.INDIVIDUAL);
                  },
                  child: Container(
                    color: Colors.white70,
                    child: new Text(listMembers[index],
                      style: TextStyle(
                        color: Colors.blue, fontSize: 30,
                      ),),
                  ),
                );
              },

              itemCount: listMembers.length,
            ),
          ),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            child: GestureDetector(
              onTap: () async{
                await setLoginStatus(false);
                navigateToLogin(context);
              },
              child: Text("Log Out ",style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
