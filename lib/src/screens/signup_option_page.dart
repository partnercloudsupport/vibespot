// import 'dart:async';
import 'package:flutter/material.dart';

class SignUpOption extends StatefulWidget {
  @override
  SignUpOptionState createState() => SignUpOptionState();
}

class SignUpOptionState extends State<SignUpOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.orange.shade700),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Create Account",
            style: TextStyle(color: Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              accountOption(),
              SizedBox(height: 40.0),
              artistButton(),
              SizedBox(height: 15.0),
              managerButton(),
              SizedBox(height: 15.0),
            ]),
      ),
    );
  }

  Widget accountOption() {
    return Center(
      child: new Text(
        "Choose an option to sign up",
        style: new TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins-Bold',
          fontSize: 23.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }


  Widget artistButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: 200.0,
        height: 60.0,
        child: OutlineButton(
          child: Text(
            "Sign up as artist",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 23.0,
            ),
          ),
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('/SignUpArtistPage');
            });
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
      ),
    );
  }


 
  Widget managerButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: 200.0,
        height: 60.0,
        child: OutlineButton(
          child: Text(
            "Sign up as manager",
            style: TextStyle(
              color: Colors.red.shade300,
              fontSize: 23.0,
            ),
          ),
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('/SignUpManagerPage');
            });
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
  
}
