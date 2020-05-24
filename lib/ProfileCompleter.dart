import 'package:flutter/material.dart';
import 'package:phpadmingetdata/AddImage.dart';
import 'package:phpadmingetdata/Invite.dart';
import 'package:phpadmingetdata/NameDetails.dart';
import 'package:phpadmingetdata/password.dart';



class PageCompleter extends StatefulWidget {


  @override
  _PageCompleterState createState() => _PageCompleterState();
}

class _PageCompleterState extends State<PageCompleter> {
  PageController _pageController = PageController();
  var _currentPagevalue = 0;
  static const int _numPages = 4;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPagevalue ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 10),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xff734F96),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xff101010),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            PageView(
              controller: _pageController,
              physics: ClampingScrollPhysics(),
              onPageChanged: (int page){
                setState(() {
                  _currentPagevalue = page;
                });
              },


              children: <Widget>[
                Password(),
                AddImage(),
                Name(),
                Invite(),
              ],

            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: _buildPageIndicator(),
                ),
              ),
            ),
            _currentPagevalue != _numPages - 1
                ? Align(
                  alignment: FractionalOffset.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                )
                : Text(''),
          ],



        ),
        bottomSheet: _currentPagevalue == _numPages - 1
            ? Container(
          height: 100.0,
          width: double.infinity,
          color: const Color(0xff734F96),
          child: GestureDetector(
            onTap: () => print('Get started'),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Get started',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
            : Text(''),

      ),
    );

  }
}
