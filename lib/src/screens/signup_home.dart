// import 'dart:async';
import 'package:flutter/material.dart';

class SignUpHome extends StatefulWidget {
  @override
  SignUpHomeState createState() => SignUpHomeState();
}

class SignUpHomeState extends State<SignUpHome> {
 

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
              SizedBox(height: 15.0),
              startedText(),
              SizedBox(height: 15.0),
              accountOption(),
              SizedBox(height: 15.0),
              facebookSignup(),
              SizedBox(height: 15.0),
              gmailSignup(),
              SizedBox(height: 15.0),
              emailSignup(),
              SizedBox(height: 15.0),
              termsCondition(),
            ]),
      ),
    );
  }

  Widget startedText() {
    return Center(
      child: new Text(
        "Let's get started",
        style: new TextStyle(
          color: Colors.orange.shade700,
          fontFamily: 'Poppins-Bold',
          fontSize: 30.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget accountOption() {
    return Center(
      child: new Text(
        "Create your account using Google, Facebook, or Email",
        style: new TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins-Light',
          fontSize: 18.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget facebookSignup() {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Navigator.of(context).pushNamed('/LogInPage');
        });
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 42.0,
        child: Image.asset('assets/images/facebook-btn.png'),
      ),
    );
  }

  Widget gmailSignup() {
    return GestureDetector(
      onTap: () {
        setState(() {
      
          // Navigator.of(context).pushNamed('/LogInPage');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => LogInPage()),
          // );
        });
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 42.0,
        child: Image.asset('assets/images/google-btn.png'),
      ),
    );
  }

  Widget emailSignup() {
    return GestureDetector(
      onTap: () {
        setState(() {

          Navigator.of(context).pushNamed('/SignUpOption');
        });
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 42.0,
        child: Image.asset('assets/images/email-btn.png'),
      ),
    );
  }

  Widget termsCondition() {
    return Center(
      child: new Text(
        "By creating an account I agree to Terms & Conditions, Privacy Policy, and Distribution Agreement;.",
        style: new TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 15.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
