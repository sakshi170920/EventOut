import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/TaskScreens/CustomAppBar.dart';
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

    return  Scaffold(

      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: CustomAppBar(text: "Messages",align: Alignment.centerLeft,),
          ),
          Expanded(
            flex: 15,
            child: Container(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (BuildContext context , int index){
                  return GestureDetector(
                    onTap: (){
                      navigateToChatRoom(context: context , group: listClubs[index] , subGroupId: null , type: ChatType.GROUP);
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white70,),
                          child: new Text(listClubs[index],
                          style: TextStyle(
                            color: Colors.blue, fontSize: 30,
                          ),),
                      ),
                  );
                },

                itemCount: listClubs.length,
              ),
            ),
          ),
        ],
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
              decoration: BoxDecoration(color: Colors.white70),
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
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: DeepPurple,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: CustomAppBar(text: "Messages",align: Alignment.center,borderWidth: 0.0,),
          ),
          Expanded(
            flex: 15,
            child: ListView.builder(
              padding: EdgeInsets.all(5),
              itemCount: listMembers.length,
              itemBuilder: (BuildContext context , int index) {
                return GestureDetector(
                  onTap: (){
                    navigateToChatRoom(context : context,group: listMembers[index],subGroupId: 'chat',type: ChatType.INDIVIDUAL);
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Purple,),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: DeepPurple,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),


                    ),
                      padding: const EdgeInsets.only(
                        left: 32,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CircleAvatar(backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 4,

                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    flex: 2,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      listMembers[index],
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Grey,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 8),
                                      alignment: Alignment.topLeft,

                                      child: Text(
                                        'How you doing ?',

                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'SegoeUI-Bold',
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,

                            child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("9 hrs",
                                    style: TextStyle(color: Grey,fontSize: 10,
                                    decoration: TextDecoration.none),
                                ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 15,
                                        child: Text('2',style: TextStyle(color: Purple),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),),


                        ],
                      ),
                    ),
                  ),

                );

              }
            ),
          ),
        ],
      ),
    );
  }
}
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    bottomOpacity: double.minPositive,
    elevation: 0,
    leading: Container(
        margin: EdgeInsets.only(left: constPadding, top: constPadding
        ),
        child: Icon(Icons.arrow_back,color: Grey,
        ),
    ),
    actions: <Widget>[
      Container(
          margin: EdgeInsets.only(right: constPadding, top: constPadding
          ),
          child: IconButton(icon: Icon(Icons.search,color: Grey,
          ),
              onPressed: () {})),
    ],

  );
}
