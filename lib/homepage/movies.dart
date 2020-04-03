import 'package:flutter/material.dart';
import 'package:login/homepage/bottomSection.dart';

class Movies extends StatefulWidget {
  bool DarkMode = false;
  Movies({
    this.DarkMode
  });
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    var fontSize = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: widget.DarkMode ? Color.fromRGBO(31, 31, 31, 1) : Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: widget.DarkMode ?Colors.white : Color.fromRGBO(31, 31, 31, 1)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("", style: TextStyle(color: Colors.transparent, ),),

            IconButton(
              icon: Icon(Icons.invert_colors, color: widget.DarkMode ?Colors.white : Color.fromRGBO(31, 31, 31, 1),),
              onPressed: (){
                setState(() {
                  widget.DarkMode = !widget.DarkMode;
                });
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Text("MOVIES", style: TextStyle(color: widget.DarkMode ?Colors.white : Color.fromRGBO(31, 31, 31, 1),fontSize:fontSize*30, fontWeight: FontWeight.bold, fontFamily: 'Ubuntu'),)
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Text("Action", style: TextStyle(color: widget.DarkMode ?Colors.white : Color.fromRGBO(31, 31, 31, 1),fontSize:fontSize*20, fontWeight: FontWeight.w100, fontFamily: 'Ubuntu'),)
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            //Top Section Ends
            //Bottom Section Starts
            Container(
              child: BottomSection(),
            )
          ],
        ),
      ),
    );
  }
}
