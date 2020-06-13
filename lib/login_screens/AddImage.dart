import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {

  @override
  _AddImageState createState() => _AddImageState();

}

class _AddImageState extends State<AddImage> {

  Future<File> file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';
  @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }

//  chooseImage() {
//    setState(() {
//      file = ImagePicker.pickImage(source: ImageSource.gallery);
//    });
//  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff101010),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(

                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text("Add your photo", style: TextStyle(
                    fontFamily: 'MyriadPro-Regular',
                    fontSize: 25,
                    color: Colors.white70,


                  ),

                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text("Help your teammates know you are in Asana", style: TextStyle(
                    fontFamily: 'MyriadPro-Regular',
                    fontSize: 14,
                    color: Colors.white38,

                  ),
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: GestureDetector(

                    child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 90,
                      child: Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: Colors.white38,

                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text("Add photo", style: TextStyle(
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 17,
                  color: Colors.white70,

                ),
                  textAlign: TextAlign.center,
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
    );
  }
}
