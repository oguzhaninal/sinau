import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sinau/config/colors.dart';
import 'package:sinau/homeScreen/homeScreen.dart';
import 'package:sinau/search.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  static List pages = [
    Home(),
    Search(),
    Center(
      child: Text("data"),
    ),
    Center(
      child: Text("askjask"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Center(child: pages.elementAt(currentIndex)),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                selectedItemColor: MainColors.cardBoxColor,
                unselectedItemColor: Colors.black,
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(FlutterIcons.home_oct), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(FlutterIcons.search1_ant), label: 'Explore'),
                ],
              ),
            )));
  }
}
