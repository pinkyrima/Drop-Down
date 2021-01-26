import 'package:flutter/material.dart';
import 'package:flutterapp/DropDownWork.dart';
import 'package:flutterapp/HomeScreen.dart';
import 'package:flutterapp/SecondScreen.dart';
import 'package:flutterapp/ThirdScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DropDownWidget(),
    );
  }
}


