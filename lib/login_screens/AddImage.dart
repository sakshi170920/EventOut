import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EventOut/SharedPreferencesMethods.dart' as SharedPref;

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  Future<File> file;
  String status = '';
  String base64Image;
  PickedFile tmpFile;
  bool _setImage;
  File _image;
  String errMessage = 'Error Uploading Image';
  void _choose(ImageSource source) async {
    tmpFile = await ImagePicker().getImage(source: source);
    _image = File(tmpFile.path);
  }

  void _upload() async {
    if (_image == null) return;
    String base64Image = base64Encode(_image.readAsBytesSync());
    String fileName = _image.path.split("/").last;
    SharedPref.setImageFileName(fileName);
    SharedPref.setImage(base64Image);
  }

  @override
  void initState() {
    _setImage = false;
    // TODO: implement initState

    super.initState();
  }

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
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add your photo",
                    style: TextStyle(
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
                  child: Text(
                    "Help your teammates know you are in Asana",
                    style: TextStyle(
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
                    onTap: () {
                      _choose(ImageSource.gallery);
                      setState(() {
                        if (_image != null) {
                          setState(() {
                            _setImage = true;
                            _upload();
                          });
                        }
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: 90,
                      child: _setImage
                          ? Image.file(_image)
                          : Icon(
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
                child: Text(
                  "Add photo",
                  style: TextStyle(
                    fontFamily: 'MyriadPro-Regular',
                    fontSize: 17,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
