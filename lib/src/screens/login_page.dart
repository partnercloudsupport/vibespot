import 'dart:async';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
 LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/signUpHome");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

   final welcomeBack = new Center(
          child: new Text("Welcome Back",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );   

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

   final loginButton = Padding(
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
                "Login In", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    ); 

  final forgetButton = FlatButton(
    child: Text('Forget password', style: TextStyle(color:Colors.black),
    ),
    onPressed: (){

    },
  );

  final signInOption = new Center(
          child: new Text("Or",
          style: new TextStyle(
            color: Colors.orange.shade700,
            fontFamily: 'Poppins-Bold',
            fontSize: 20.0,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In", style: TextStyle(color:Colors.orange.shade700)),
        backgroundColor: Colors.black,
        // child:new Icon(
        //   icon: 

        // ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              welcomeBack,
              SizedBox(height: 40.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 15.0),
              loginButton,
              SizedBox(height: 15.0),
              forgetButton,
              SizedBox(height: 15.0),
              signInOption,
              SizedBox(height: 15.0),
              facebookSignIn,
              SizedBox(height: 10.0),
              googleSignIn,
          ]
        ),
      ),
    );
  }
}