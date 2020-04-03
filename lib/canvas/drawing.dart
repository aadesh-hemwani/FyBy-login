import 'package:flutter/material.dart';

class MyPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    var line2 = new Paint();
    line2.color = Color.fromRGBO(22, 102, 225, 0.5);
    line2.style = PaintingStyle.fill;

    var path2 = new Path();
    path2.moveTo(0, size.height * 1.135);
    path2.quadraticBezierTo(size.width *0.09, size.height *0.85, size.width*0.45, size.height*0.8);
    path2.quadraticBezierTo(size.width *0.9, size.height*0.75, size.width, size.height*0.45);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, line2);


    var line = new Paint();
    line.color = Color.fromRGBO(22, 102, 225, 0.7); //Color.fromRGBO(182, 60, 170, 1);
    line.style = PaintingStyle.fill;

    var path = new Path();
    path.moveTo(0, size.height*0.98);
    path.quadraticBezierTo(size.width *0.09, size.height *0.85, size.width*0.45, size.height*0.8);
    path.quadraticBezierTo(size.width *0.9, size.height*0.75, size.width, size.height*0.58);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, line);


  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}