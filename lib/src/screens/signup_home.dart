import 'dart:async';
import 'package:flutter/material.dart';

class signUpHome extends StatefulWidget {
  static String tag = 'signuphome-page';
  @override
 signUpHomeState createState() => signUpHomeState();
}

class signUpHomeState extends State<signUpHome> {
    
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
  
    Navigator.of(context).pushReplacementNamed("/SignUpPage1");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

   final getStarted = new Center(
          child: new Text("Let's get started",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

     final signupTag = new Center(
          child: new Text("Create your account using Google, Facebook, or Email",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-Light',
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
          ),   
        ); 


  final facebookSignIn = Hero(
      tag:'facebook',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/facebook-btn.png'),
      ),
    );


    final googleSignIn = Hero(
      tag:'google',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/google-btn.png'),
      ),
    );

       final emailSignIn = Hero(
      tag:'google',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/email-btn.png'),
      ),
    );

     final termsConditions = new Center(
          child: new Text("By creating an account I agree to Terms & Conditions, Privacy Policy, and Distribution Agreement;.",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

    //  final termsConditionsa = RichText(
    //           softWrap: true,
    //           text: TextSpan(
    //           text: ,
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontFamily: 'Poppins',
    //             fontSize: 15.0,
              
    //           ),
    //           ),
    //  );
                
    //           TextAlign: TextAlign.center,
    //           children: [
    //             TextSpan(text: "By creating an account I agree to",  )
    //             TextSpan(text: "Terms & Conditions, Privacy Policy," )
    //             TextSpan(text: "and",)
    //             TextSpan(text: "Distribution Agreement;.",)
    //           ]
    //         ),
    //       ),   
    //     );   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        title: Text("Create Account", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              getStarted,
              SizedBox(height: 10.0),
              signupTag,
              SizedBox(height: 15.0),
              facebookSignIn,
              SizedBox(height: 15.0),
              googleSignIn,
              SizedBox(height: 15.0),
              emailSignIn,
              SizedBox(height: 15.0),
              termsConditions,
          ]
        ),
      ),
    );
  }
}