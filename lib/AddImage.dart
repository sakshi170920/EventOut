import 'package:flutter/material.dart';
class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff101010),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Add your photo", style: TextStyle(
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 30,
                  color: Colors.white,

                ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Help your teammates know you are in Asana", style: TextStyle(
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 20,
                  color: Colors.white,

                ),
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 100,
                    child: Icon(
                      Icons.camera_alt,
                      size: 30,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text("Add photo", style: TextStyle(
                fontFamily: 'MyriadPro-Regular',
                fontSize: 20,
                color: Colors.white,

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
    );
  }
}
