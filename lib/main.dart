import 'package:flutter/material.dart';
import 'myNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "DMSans"),
      title: "Sinau",
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
