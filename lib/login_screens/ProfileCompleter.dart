import 'package:flutter/material.dart';
import 'package:EventOut/LoginDatabase/LoginDetails.dart';
import 'package:EventOut/NavigationMethods.dart';
import 'package:EventOut/login_screens/AddImage.dart';
import 'package:EventOut/login_screens/Invite.dart';
import 'package:EventOut/login_screens/NameDetails.dart';
import 'package:EventOut/login_screens/password.dart';
import 'package:EventOut/SharedPreferencesMethods.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class ProfileCompleter extends StatefulWidget {
  static String id = 'profilecompleter';
  @override
  _ProfileCompleterState createState() => _ProfileCompleterState();
}

class _ProfileCompleterState extends State<ProfileCompleter> {
  bool spinner = false;
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
        backgroundColor: const Color(0xff101010),
        resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
          inAsyncCall: spinner,
          child: Stack(
            children: <Widget>[
              PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (int page) {
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
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                _pageController.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Prev',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
        bottomSheet: _currentPagevalue == _numPages - 1
            ? Container(
                height: 100.0,
                width: double.infinity,
                color: const Color(0xff734F96),
                child: GestureDetector(
                  onTap: () async {
                    setState(() {
                      spinner = true;
                    });
                    String email = await getEmail();
                    String fname = await getFirstName();
                    String lname = await getLastName();
                    String image = await getImage();
                    String imageFileName = await getImageFileName();
                    String password = await getPassword();
                    print(image);
                    bool register = await LoginDetails.registerUser(
                        email, fname, lname, password, '', '');

                    if (register) {
                      await setLoginStatus(true);
                      navigateToContactList(context);
                    } else
                      print('invalid register');
                    setState(() {
                      spinner = false;
                    });
                  },
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
