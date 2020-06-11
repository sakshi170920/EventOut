import 'dart:convert';
import 'dart:io';

//import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
const String basic_url = 'https://eventzy123.000webhostapp.com' ;
class LoginDetails{
  String email;
  String password;
  String fname;
  String lname;
  String contact;
  Image profile;


  static Future<bool>  isValidRegisterEmail(String email) async {
    var url = '$basic_url/isValidRegisterEmail.php';
    http.Response response = await http.post(url , body : {'email' : email}  );
    var data = jsonDecode(response.body);
    print(data);
    if(data == false)
      return true;
    else
      return false;
  }
  static Future<bool> isValidLoginEmail(String email , String password) async {
    var url = '$basic_url/check_login_email.php';
    http.Response response = await http.post(url , body: {'email':email , 'password':password});
    //return response.body.isNotEmpty ? true : false ;

    var data = jsonDecode(response.body);
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
class LoginDetailsArguments {
  LoginDetails user;
  LoginDetailsArguments(this.user);
}