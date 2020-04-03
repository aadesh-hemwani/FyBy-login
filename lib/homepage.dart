import 'package:flutter/material.dart';
import 'package:login/homecontent.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool DarkMode = false;

  void initState(){
    super.initState();
    DarkMode = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: DarkMode ? Color.fromRGBO(31, 31, 31, 1): Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.add, color: DarkMode ? Color.fromRGBO(31, 31, 31, 1): Colors.white,),
                ),
              ),
              Container(child: Text("FyBy", style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*40,fontFamily: 'Ubuntu', color:DarkMode ?  Colors.white : Color.fromRGBO(31, 31, 31, 1), fontWeight: FontWeight.bold))),
              IconButton(
                icon: Icon(Icons.invert_colors, color: DarkMode ?Colors.white : Color.fromRGBO(31, 31, 31, 1),),
                onPressed: (){
                  setState(() {
                    DarkMode = !DarkMode;
                  });
                },
              ),
            ],
          ),
        ),
        backgroundColor: DarkMode ? Color.fromRGBO(31, 31, 31, 1) : Colors.white,// Color.fromRGBO(2, 17, 72, 1),
        body:new HomeContent(DarkMode: DarkMode)
    );
  }
}