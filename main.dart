import 'package:flutter/material.dart';
import 'Page/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //SystemChrome.setEnabledSystemUIOverlays([]);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //? What is
      home: LoginPage(),
    );
  }
}

