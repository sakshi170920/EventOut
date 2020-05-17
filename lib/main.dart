import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:phpadmingetdata/googleoremail.dart';
import 'package:phpadmingetdata/login.dart';
import 'package:phpadmingetdata/loginorsignup.dart';
import 'dart:convert';

import 'package:phpadmingetdata/password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: loginorsignup(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }

  Future getData() async{
    var url = 'https://eventzy123.000webhostapp.com/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    //var data=json.decode(json.encode(response.body));
    print(data.toString());
  }


  @override
  void initState() {
    getData();
  }
}