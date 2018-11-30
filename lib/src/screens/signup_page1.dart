import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class SignUpPage1 extends StatefulWidget {
  createState() {
    return SignUpPage1State();
  }
}

class SignUpPage1State extends State<SignUpPage1> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String email = '';
  String username = '';
  String password = '';

  final TextEditingController _firstnameController =
      new TextEditingController();
  final TextEditingController _lastnameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _usernameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back, color: Colors.orange.shade700),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.orange.shade700),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Create acount",
            style: TextStyle(color: Colors.orange.shade700)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      // margin: EdgeInsets.all(20.0),

      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                SizedBox(height: 15.0),
                welcome(),
                SizedBox(height: 15.0),
                firstnameField(),
                SizedBox(height: 15.0),
                lastnameField(),
                SizedBox(height: 15.0),
                emailField(),
                SizedBox(height: 15.0),
                usernameField(),
                SizedBox(height: 15.0),
                passwordField(),
                // Container(margin: EdgeInsets.only(top: 25.0)),
                SizedBox(height: 10.0),
                submitButton(),
              ]),
        ),
      ),
    );
  }

  Widget welcome() {
    return Center(
      child: new Text(
        "Welcome",
        style: new TextStyle(
          color: Colors.orange.shade700,
          fontFamily: 'Poppins-Bold',
          fontSize: 30.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget firstnameField() {
    return TextFormField(
      controller: _firstnameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'firstname',
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validateFirstname,
      onSaved: (String value) {
        firstName = value;
      },
    );
  }

  Widget lastnameField() {
    return TextFormField(
      controller: _lastnameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'lastname',
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validateLastname,
      onSaved: (String value) {
        lastName = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget usernameField() {
    return TextFormField(
      controller: _usernameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'username',
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validateUsername,
      onSaved: (String value) {
        username = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(80.0),
        child: MaterialButton(
          minWidth: 200.0,
          height: 60.0,
          onPressed: () {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();
              print('Time to post $email and $password to my API');
            }
          },
          color: Colors.orange.shade700,
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
