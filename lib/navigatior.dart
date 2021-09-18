import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'home.dart';

GlobalKey btm_nav_key = GlobalKey();

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int pgIndex = 0;
  int pg = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: btm_nav_key,
          index: 0,
          height: 50,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Color(0xFF9d8fe6)),
            Icon(Icons.list, size: 30, color: Color(0xFF9d8fe6)),
            Icon(Icons.shopping_cart, size: 30, color: Color(0xFF9d8fe6)),
            Icon(Icons.person, size: 30, color: Color(0xFF9d8fe6)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xFF9d8fe6),
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 800),
          onTap: (index) {
            setState(() {
              pg = index;
            });
          },
        ),
        body:
            (pgIndex == 0) ? Home() : (pgIndex == 1) ? profile() : settings(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Profile page"),
      ),
    );
  }
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Settings page"),
      ),
    );
  }
}

void help(BuildContext context) {
  var AD = new AlertDialog(
    title: Text("Help"),
    content: Text("Contact us: help@demo.com"),
  );
  showDialog(context: context, child: AD);
}

void sign_out(BuildContext context) {
  var AD = new AlertDialog(
    title: Text("Sign Out"),
    content: Text("Are u sure to signed out?"),
    actions: [
      FlatButton(
          onPressed: null,
          child: Text("No", style: TextStyle(color: Colors.teal))),
      FlatButton(
          onPressed: null,
          child: Text("Yes", style: TextStyle(color: Colors.teal))),
    ],
  );
  showDialog(context: context, child: AD);
}
