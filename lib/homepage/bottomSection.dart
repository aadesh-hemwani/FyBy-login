import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/movies_model.dart';
import 'dart:math';
class BottomSection  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var fontSize = MediaQuery.of(context).textScaleFactor;
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendations.length,
            itemBuilder: (BuildContext context, int index){
              final Movie recomm = recommendations[index];
              return Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  width: MediaQuery.of(context).size.width-100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromRGBO(rng.nextInt(200), (rng.nextInt(200)), rng.nextInt(255), 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom:5),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  child: Image(
                                    width: MediaQuery.of(context).size.width-100,
                                    image: AssetImage(recomm.imageURL),
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                            child: Text(recomm.title, style: TextStyle(color: Colors.white, fontSize: fontSize*23, fontWeight: FontWeight.bold, fontFamily: 'Ubuntu'),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                            child: Text(recomm.year, style: TextStyle(color: Colors.white, fontSize: fontSize*12, fontWeight: FontWeight.bold, fontFamily: 'Ubuntu'),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 5),
                            child: Text(recomm.description, style: TextStyle(color: Colors.white, fontSize: fontSize*13.5, fontWeight: FontWeight.bold, fontFamily: 'Ubuntu'),),
                          ),
                          Align(
                            heightFactor: 1.5,
                            child: IconButton(
                              icon: Icon(Icons.keyboard_arrow_up, color: Colors.white,size: fontSize*30,),
                            ),
                          )
                      ],
                  )
                ),
              );
            },
          ),
        ),
      ),
    );

  }
}
