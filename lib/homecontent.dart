import 'package:flutter/material.dart';
import 'package:login/homepage/movies.dart';
import 'canvas/drawing.dart';

class HomeContent extends StatefulWidget {
  bool DarkMode;
  HomeContent({
    this.DarkMode,
  });
  @override
  _HomeContentState createState() => _HomeContentState();
}
class _HomeContentState extends State<HomeContent>{
  @override
  Widget build(BuildContext context) {
    var phoneHeight = MediaQuery.of(context).size.height;
    var phonewidth = MediaQuery.of(context).size.width;
    var fontSize = MediaQuery.of(context).textScaleFactor;
    var dpi = MediaQuery.of(context).devicePixelRatio;

    print("DPI" + dpi.toString());

    return Container(
      color: widget.DarkMode ? Color.fromRGBO(31, 31, 31, 1) : Colors.white,
      child: new CustomPaint(
        foregroundPainter: new MyPainter(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            //Container(child: Text("FyBy", style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*50,fontFamily: 'Ubuntu', color:widget.DarkMode ?  Colors.white : Color.fromRGBO(31, 31, 31, 1), fontWeight: FontWeight.bold))),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: phoneHeight/9),
                  Container(
                    child: Text("Login with", style: TextStyle(color: widget.DarkMode ? Colors.white : Colors.grey, fontFamily: 'Ubuntu',fontWeight: FontWeight.w100),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                         InkWell(
                          onTap: (){
                            print("google");
                          },
                          child: CircleAvatar(
                            radius: phonewidth/12,
                            backgroundImage: AssetImage('images/googleLogo.png')
                          ),
                        ),
                        CircleAvatar(
                          radius: phonewidth/12,
                          backgroundImage: AssetImage('images/facebookLogo.jpg')
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 80,
              endIndent: 80,
              color: widget.DarkMode ? Colors.white : Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: phonewidth,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(60), bottomRight: Radius.circular(60))
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: TextField(
                                style: TextStyle(fontSize: fontSize*15,color: widget.DarkMode ? Colors.white : Colors.black, fontFamily: 'Ubuntu'),
                                cursorColor: widget.DarkMode ? Colors.white : Colors.black,
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    filled: true,
                                    fillColor: widget.DarkMode ? Colors.transparent : Colors.grey[200],
                                    labelStyle: TextStyle(fontSize: fontSize*15,color: widget.DarkMode ? Colors.white : Colors.black, fontFamily: 'Ubuntu'),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email, color: widget.DarkMode ? Colors.white : Colors.black,
                                    )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: TextField(
                                style: TextStyle( fontSize: fontSize*15,color: widget.DarkMode ? Colors.white : Colors.black, fontFamily: 'Ubuntu',),
                                cursorColor: widget.DarkMode ? Colors.white : Colors.black ,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(fontSize: fontSize*15,color: widget.DarkMode ? Colors.white : Colors.black,fontFamily: 'Ubuntu'),
                                  filled: true,
                                  fillColor: widget.DarkMode ? Colors.transparent : Colors.grey[200],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,color: widget.DarkMode ? Colors.white : Colors.black,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(Icons.remove_red_eye, color: widget.DarkMode ? Colors.white : Colors.black,),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          RaisedButton(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (_)=> Movies(DarkMode: widget.DarkMode),
                              )
                              );
                            },
                            color: Color.fromRGBO(22, 102, 225, 0.8),
                            textColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(top:10.0, bottom: 10, left: 40, right: 40),
                              child: Text("Log in".toUpperCase(),
                                  style: TextStyle(fontSize: fontSize*25 ,fontFamily: 'Ubuntu')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}