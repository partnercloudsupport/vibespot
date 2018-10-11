import 'dart:async';
import 'package:flutter/material.dart';

class SignUpPage1 extends StatefulWidget {
  static String tag = 'login-page';
  @override
 SignUpPage1State createState() => SignUpPage1State();
}

class SignUpPage1State extends State<SignUpPage1> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/SignUpPage2");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  final welcomeBackSignup = new Center(
          child: new Text("Welcome",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   


  final welcomeTag = new Center(
          child: new Text("Please tell us your email address",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );  


  final emailSignup = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final checkBtn = new Radio(
      // onChanged: (int e) => something(e),
      activeColor: Colors.orange,
      value: 1,
      
    );

  // final checkButton = new Center(
  //         child: new Text("Yes, I’d like to recieve news and other interesting communications form Vibespot",
  //         style: new TextStyle(
  //           color: Colors.black,
  //           fontFamily: 'Poppins',
  //           fontSize: 20.0,
  //         ),
  //         textAlign: TextAlign.center,
  //         ),   
  //       );  

   final checkButtonText = new Center(
          child: new Text("Yes, I’d like to recieve news and other interesting communications form Vibespot",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Light',
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );  

   final nextButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.orange.shade200,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){
              } ,
              color: Colors.orange.shade700,
              child: Text(
                "Next", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    ); 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Create acount", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              welcomeBackSignup,
              SizedBox(height: 10.0),
              welcomeTag,
              SizedBox(height: 20.0),
              emailSignup,
              SizedBox(height: 15.0),
              checkBtn,
              checkButtonText,
              SizedBox(height: 15.0),
              nextButton,

          ]
        ),
      ),
    );
  }
}