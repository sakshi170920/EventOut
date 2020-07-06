import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
const String basic_url = 'https://eventzy123.000webhostapp.com' ;
class LoginDetails extends ChangeNotifier {


  static Future<bool>  isValidRegisterEmail(String email) async {
    var url = '$basic_url/isValidRegisterEmail.php';
    http.Response response = await http.post(url , body : {'email' : email}  );
    var data = jsonDecode(response.body);
    print(data);
    print('hello valid reg');
    if(data == false)
      return true;
    else
      return false;
  }
  static Future<bool>  registerUser(String email , String fname , String lname , String password , String image , String imageFileName) async {
    var url = '$basic_url/register_user.php';
    http.Response response = await http.post(url , body : {
      'email' : email , 'fname' : fname , 'lname' : lname ,
      'password': password, 'image':image , 'imageFileName' : imageFileName}
      );
    var data = jsonDecode(response.body);
    print(data);
    print('hello user reg');
    if(response.statusCode == 200)
      return true;
    else
      return false;
  }
//  static Future<bool> uploadImage() async {
//    http.Response response = await http.post(url , body: {
//      "image": base64Image,
//      "name": fileName,
//    }).then((res) {
//      print(res.statusCode);
//    }).catchError((err) {
//      print(err);
//    }
//  }
  static Future<bool> isValidLoginEmail(String email , String password) async {
    var url = '$basic_url/check_login_email.php';
    http.Response response = await http.post(url , body: {'email':email , 'password':password});
    //return response.body.isNotEmpty ? true : false ;

    var data = jsonDecode(response.body);
    print(response.statusCode.toString() + 'hey');
    if(data == false)
      return false;
    else
      return true;
  }

  Future getData() async{
    var url = '$basic_url/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(response.statusCode);
    print(data);
  }



}

