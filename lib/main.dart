import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/LoginPage.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Arial",
    ),
  ));
}



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  startTime() async {
    var duration = new Duration(seconds: 3);   //Starting page duration for 3 sec
    return new Timer(duration, navigation);
  }
  void navigation()
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));        // Nevigate to Login Page
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image(
                image: AssetImage("image/logo.png"),   //Starting page logo
                height: 200,
                width: 200,
              ),
              Text(
                "BLOGPOST",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20.5,
                  fontWeight: FontWeight.w400,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
