import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';



class MainBottomPart extends StatelessWidget {
  const MainBottomPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              //color: Colors.blue.withOpacity(0.2),
              ),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: constPadding * 1.5, vertical: constPadding * 1.5),
              decoration: BoxDecoration(
                  color: Color(0XFF241332),
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: constPadding / 1.5,
                        left: constPadding * 1.5,
                        right: constPadding),
                    alignment: Alignment.centerLeft,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: Text(
                      "Notification",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Container(
                    //decoration: BoxDecoration(color: Colors.pink),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        top: constPadding / 4,
                        left: constPadding * 1.5,
                        right: constPadding),
                    child: Text(
                      "Bondi Beach, Aust csgfbhsacanlnasukbfkjab\nBondi Beach Australia",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
