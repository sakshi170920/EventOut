import 'package:flutter/material.dart';
import 'package:phpadmingetdata/password.dart';
class ProfileCompleter extends StatefulWidget {
  @override
  _ProfileCompleterState createState() => _ProfileCompleterState();
}

class _ProfileCompleterState extends State<ProfileCompleter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: <Widget>[
            Password(),

          ],

        ),

      ),
    );

  }
}
