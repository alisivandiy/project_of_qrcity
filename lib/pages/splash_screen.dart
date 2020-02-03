import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new SplashScreenState();

}
class SplashScreenState extends State<SplashScreen>{


 startTime() {
  var _duration = new Duration(seconds: 9);
  return new Timer(_duration , navigationPage);
}


navigationPage() {
   Navigator.of(context).pushNamed('/intro_slider');
}

  @override
  void initState() {

    super.initState();
    startTime();

  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor:Color(0xff36204E),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                width:450.0,
                height: 450.0,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image:new AssetImage('assets/images/iconqrcity.png')
                  )
                ),
              )
            ],
          ),
          new Padding(
              padding: const EdgeInsets.only(bottom: 30),
            child: new Align(
              alignment: Alignment.bottomCenter,
              child: new CircularProgressIndicator(),
            ),


          )
        ],
      )
    );
  }




}