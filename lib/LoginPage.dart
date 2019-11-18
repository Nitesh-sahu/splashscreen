import 'package:flutter/material.dart';
import 'package:splashscreen/Homepage.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[

            Image(
              image: AssetImage("image/N.jpg"),
              height: 200.0,
              width: 200.0,

            ),
            Text(
              "User Login",

              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 30.0,
            ),

            //TextFiled For userEmail Address Input
            TextField(
              keyboardType:TextInputType.emailAddress,
              style: TextStyle(fontSize: 15.0,color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 2.0,

                ),
                counterStyle: TextStyle(color: Colors.white,fontSize: 10.0),
                hintText: "Email Id",
                hintStyle: TextStyle(fontSize: 15.0,color: Colors.white),
              ),
              controller: username,
            ),
            Divider(
              color: Colors.transparent,
              height: 30.0,
            ),


              //  TextFile for The Password input
            TextField(
              style: TextStyle(fontSize: 15.0,color: Colors.white),
              decoration: InputDecoration(
                helperText: check==true?"":"Wrong Credentials!!!!",
                border: OutlineInputBorder(),
                helperStyle: TextStyle(fontSize: 15.0,color: Colors.white),
                hintText: "Password",

                hintStyle: TextStyle(fontSize: 15.0,color: Colors.white),
              ),
              controller: password,
              obscureText: true,
            ),
            Divider(
              color: Colors.transparent,
              height: 40.0,
            ),
          // Button for submit
            Padding(
              padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                splashColor: Colors.deepOrange,
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 16.0),
                ),
                color: Colors.white,
                onPressed: () {
                  if (username.text == "NITESH@gmail.com" &&   //and we will check both of them
                      password.text == "admin") {

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  }else{
                    print("sorry you have entereed wrong credentials");
                    setState(() {
                      check = false;
                      //changing the state of the textfield when i input wrong credetials through it
                      username.text = "";
                      password.text = "";
                    });
                  }
                },
              ),
            )
          ],
        ),

      ),
    );
  }
  final  username=TextEditingController();
  final password=TextEditingController();
  bool check=true;
}
