import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/homepage.dart';

void main(){
  runApp(new MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      //systemNavigationBarColor: Color.fromRGBO(57, 125, 229, 1),//Color.fromRGBO(182, 60, 170, 1)
      statusBarIconBrightness: Brightness.dark,
    )
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(22, 102, 225, 1),//Color.fromRGBO(2, 17, 72, 1),
        hintColor: Colors.white
      ),
      home: new Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}