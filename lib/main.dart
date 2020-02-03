import 'package:flutter/material.dart';
import 'package:qrcity_splash_screen/pages/home_page.dart';
import 'package:qrcity_splash_screen/pages/splash_screen.dart';
import 'package:qrcity_splash_screen/pages/intro_slider.dart';
import 'package:qrcity_splash_screen/pages/login.dart';
import 'package:qrcity_splash_screen/pages/singup.dart';
import 'package:qrcity_splash_screen/pages/main_of_login_signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qrcity',
     theme: ThemeData(
       //primaryColor: new Color(0xff075E54),
       accentColor: Colors.white,
     ),
     initialRoute: "/splash_screen",
     routes: {
       "/login_screen" : (context)=> new Directionality(textDirection: TextDirection.rtl, child:(LoginPage())),
       "/signup_screen" : (context)=> new Directionality(textDirection: TextDirection.rtl, child:(SingUpPage())),
       "/main_of_login_signup" : (context)=> new Directionality(textDirection: TextDirection.rtl, child:(mainappforls())),
       "/" : (context) => new Directionality(textDirection:TextDirection.ltr, child: QrcityHome()),
       "/splash_screen" : (context) => new Directionality(textDirection:TextDirection.ltr, child: SplashScreen()),
       "/intro_slider" : (context) => new Directionality(textDirection: TextDirection.ltr, child: IntroSlider()),

     }
     ,
debugShowCheckedModeBanner: false,
    );
  }
}

