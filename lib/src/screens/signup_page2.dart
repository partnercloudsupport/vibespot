import 'dart:async';
import 'package:flutter/material.dart';

class SignUpPage2 extends StatefulWidget {

  static String tag = 'login-page';
  @override
 SignUpPage2State createState() => SignUpPage2State();
 
}

class SignUpPage2State extends State<SignUpPage2> {



  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }
  
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed("/SignUpPage3");
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
          child: new Text("Please, Introduce Yourself",
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
          ),   
        );  


  final firstname = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'First Name',
         filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

  final lastname = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Last Name',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

  final phone = TextField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Phone',
         filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

  final dateOfBirth = TextField(
      keyboardType: TextInputType.datetime,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Date of Birth',
         filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

  final password = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      obscureText: true,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );



  final nextButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.orange.shade700,
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
              firstname,
              SizedBox(height: 15.0),
              lastname,
              SizedBox(height: 15.0),
              phone,
              SizedBox(height: 15.0),
              dateOfBirth,
              SizedBox(height: 15.0),
              password,
              SizedBox(height: 15.0),
              nextButton,

          ]
        ),
      ),
    );
  }
}