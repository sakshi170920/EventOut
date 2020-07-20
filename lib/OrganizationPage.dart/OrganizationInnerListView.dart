import 'package:EventOut/constants/constants.dart';
import 'package:flutter/material.dart';

class OrganizationInnerListView extends StatefulWidget {
  @override
  _OrganizationInnerListViewState createState() =>
      _OrganizationInnerListViewState();
}

class _OrganizationInnerListViewState extends State<OrganizationInnerListView> {
  @override
  Widget build(BuildContext context) {
    double x = 5;
    return Container(
      height: 100 + (x - 1) * 40,
      //decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "multimedia",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: constPadding * 2),
            child: SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: x.toInt(),
                  itemBuilder: (BuildContext cnt, int index) {
                    return Container(
                      //decoration: BoxDecoration(color: Colors.blue),
                      alignment: Alignment.topLeft,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text(
                            "Maria Snow",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
