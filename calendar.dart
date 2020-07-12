import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff241332),
      appBar: AppBar(
        title: Center(child: Text('Flutter Calendar')),
        backgroundColor: Color(0xfffbaed2),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              calendarStyle : CalendarStyle(
                todayColor: Color(0xfffbaed2),
                selectedColor: Color(0xfff4509d),
                weekdayStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize : 18.0,
                ),
                weekendStyle: TextStyle(
                  color : Color(0xfffbaed2),
                  fontWeight : FontWeight.bold,
                  fontSize : 18.0,
                ),
              ),
              headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  titleTextStyle: TextStyle(
                    color : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  )
              ),
              calendarController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
