import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static String tag = 'login-page'; 
  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
    final logo = Hero(
      tag:'hero',
      child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 42.0,
          child: Image.asset('assets/images/vibe-logo-on-splash-background.png'),
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
          shadowColor: Colors.lightBlueAccent.shade200,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: (){

              } ,
              color: Colors.lightBlueAccent,
              child: Text("Login in", style: TextStyle(color: Colors.white)
              ),
          ),
        ),
    ); 


  final forgetButton = FlatButton(
    child: Text('Forget password', style: TextStyle(color:Colors.black45),
    ),
    onPressed: (){

    },
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgetButton,
          ]
        ),
      ),
      
    );
  }
}