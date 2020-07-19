import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/constants/constants.dart';
import 'package:flutter/widgets.dart';
class CurvedRectangleClipper extends CustomClipper<Path> {
  final double offset = 80;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - offset);
    var firstEndpoint = Offset(offset, size.height);
    path.arcToPoint(firstEndpoint, radius: Radius.circular(-offset),clockwise: false);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, offset);
    path.lineTo(offset, offset);

    var secondEndPoint = Offset(0,0);

    path.arcToPoint(secondEndPoint, radius: Radius.circular(-offset),clockwise: true);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
class CurvedListItemClipper extends StatelessWidget {

  final List<Map> organizationTaskList;
  CurvedListItemClipper({@required this.organizationTaskList});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedRectangleClipper(),
      child: Container(
        color: DeepPurple,
        padding: EdgeInsets.only(
          left: 32,
          top: 100,
          bottom: 32,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemBuilder: (BuildContext context , int index){
              return Container(
                width: 165,
                padding: EdgeInsets.only(top: 40 , left: 10,right: 10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index%2==0 ? Grey : Purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3.0),
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(3.0),
                    bottomLeft : Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget> [
                    Expanded(
                      flex: 2,
                      child: Text(organizationTaskList[index]['OrganizationName'].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'SegoeUI-Bold',
                          color: Colors.white,

                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(organizationTaskList[index]['UndoneTask'].toString() + "/" +
                          organizationTaskList[index]['TotalTask'].toString() + " Tasks",
                        style: TextStyle(
                          color: LightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          itemCount: organizationTaskList.length ,
        ),
      ),
    );
  }
}
