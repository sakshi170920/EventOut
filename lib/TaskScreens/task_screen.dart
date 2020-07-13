import 'package:EventOut/demo.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_app1/EventOut/lib/TaskScreens/CustomAppBar.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_app1/EventOut/lib/TaskScreens/CustomListItemClipper.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_app1/EventOut/lib/TaskScreens/task_list.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:EventOut/TaskScreens/task_data.dart';

List<Map> orgTask= [{'OrganizationName':'Tedx','UndoneTask':10,'TotalTask':13},
  {'OrganizationName':'The Robotics Forum','UndoneTask':2,'TotalTask':5},
  {'OrganizationName':'MSPC','UndoneTask':7,'TotalTask':10},
  {'OrganizationName':'Viculp','UndoneTask':4,'TotalTask':5}];
class TaskHandler extends StatelessWidget {

  static String id = 'TasksScreen';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
          backgroundColor: Pink,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      //child: AddTaskScreen(),
                    )
                )
            );
          }
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
              child: CustomAppBar('Tasks',Alignment.centerLeft)),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child: TasksList(),
            ),
          ),
          Expanded(
              flex: 4,
              child: CurvedListItemClipper(organizationTaskList: orgTask),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Divider(
                height: 30,
                thickness: 3,
                indent: 120,
                endIndent: 120,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

