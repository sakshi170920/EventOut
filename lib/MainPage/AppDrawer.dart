import 'package:EventOut/MainPage/MainBody.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:EventOut/Chat/ContactList.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:EventOut/TaskScreens/task_screen.dart';
import 'package:EventOut/calendar/calendar.dart';
import 'package:EventOut/login_screens/login.dart';
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ClipRRect(

      borderRadius: BorderRadius.only(topRight: Radius.circular(80),
        bottomRight: Radius.circular(80),
      ),
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: DrawerHeader(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Purple,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text("Sakshi Oswal",
                          style: TextStyle(fontFamily: 'SegoeUI-Bold',fontSize: 25,fontWeight: FontWeight.bold,decoration: TextDecoration.none),

                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("@sakshi_17", textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12,decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,

              child: ListView(
                children: [
                  DrawerListItem(icon: Icons.home,title: "Home", id : MainBody.id,
                  ),
                  DrawerListItem(icon: Icons.toc , title: "Tasks", id: TaskHandler.id,
                  ),
                  DrawerListItem(icon: Icons.calendar_today,title: "Calender", id: Calendar.id,
                  ),
                  DrawerListItem(icon: Icons.people,title: "Colleagues", id: ContactList.id,
                  ),
                  DrawerListItem(icon: Icons.info_outline,title: "About Us", id : null,
                  ),
                  DrawerListItem(icon: Icons.exit_to_app,title: "Log Out", id : Login.id,
                  ),

                ],
              ),
            ),

          ],
        ),


      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  final IconData icon;
  final String id;
  final String title;
  DrawerListItem({@required this.icon, @required this.id, @required this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: (){
        Navigator.of(context).pop();
        print(id);
        if(id == Login.id)
        {
        setLoginStatus(false);
        Navigator.of(context).pushNamedAndRemoveUntil(id, (route) => false);
        print("heello");
        return;
        }
        bool currentRouteIsHome = false;
        bool currentRouteIsNewRoute = false;

        Navigator.popUntil(context, (currentRoute) {
          // This is just a way to access currentRoute; the top route in the
          // Navigator stack.
          if (currentRoute.settings.name == MainBody.id ) {
            currentRouteIsHome = true;
          }
          if (currentRoute.settings.name == id ) {
            currentRouteIsNewRoute = true;
          }

          // Return true so popUntil() pops nothing.
          return true;
        });

        // Switch screen
        if (!currentRouteIsNewRoute) {
          // Only switch screen if new route is different from current route.
          if (currentRouteIsHome) {
            // Navigate from home to non-home screen.
            Navigator.pushNamed(context, id);
          } else {
            if ( id == MainBody.id) {
              // Navigate from non-home screen to home.
              Navigator.pop(context);
            } else {
              // Navigate from non-home screen to non-home screen.
              Navigator.popAndPushNamed(context, id);
            }
          }
        }

      },
    );
  }


}

