import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilar/models/Custom_icons.dart';
import 'package:pilar/models/User.dart';
import 'package:pilar/pages/Login.dart';
import 'package:pilar/pages/profile.dart';

import 'constants.dart';
import 'pages/Inicio.dart';
import 'pages/Recursos.dart';

class PageControl extends StatefulWidget {
  final int getPageIndex;
  PageControl({this.getPageIndex});
  @override
  _PageControlState createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  PageController pageController;
  int getPageIndex = 0;

  void initState() {
    super.initState();
    pageController = PageController();
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
      // print(getPageIndex);
    });
  }

  changePage(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(microseconds: 400), curve: Curves.bounceInOut);
  }

  final UserModel user = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: PageView(
        children: <Widget>[
          HomePage(),
          // ProfilePage(),
          SecondPage(),
          LoginPage(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: kTitleBgColor,
          currentIndex: getPageIndex,
          onTap: changePage,
          activeColor: kTitleColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Pilar.inicio),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Pilar.recursos,
                  size: 25,
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              label: 'Recursos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Pilar.perfil),
              label: 'Perfil',
            ),
          ]),
    );
  }
}
