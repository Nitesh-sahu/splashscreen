import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Hii, NITESH"),
        centerTitle: true,
      ),


      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "Hello Nitesh, Welcome you have authenticated yourself !!",
            style: TextStyle(
              color: Colors.red,
              fontSize: 15.0,


            ),),
        ),
      ),
    );
  }
}