import 'package:flutter/material.dart';
import 'package:vibespot/src/mixins/validation_mixin.dart';
// import '../mixins/validation_mixin.dart';

class LogInPage extends StatefulWidget {
  createState() {
    return LogInPageState();
  }
}

class LogInPageState extends State<LogInPage> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  final TextEditingController _emailController = new TextEditingController();
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
        title: Text("Sign In", style: TextStyle(color: Colors.orange.shade700)),
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
            emailField(),
            SizedBox(height: 15.0),
            passwordField(),
            // Container(margin: EdgeInsets.only(top: 25.0)),
            SizedBox(height: 10.0),
            submitButton(),
            SizedBox(height: 10.0),
            forgetPassword(),
            SizedBox(height: 10.0),
            or(),
            SizedBox(height: 10.0),
            facebookLogin(),
            SizedBox(height: 10.0),
            gmailLogin(),

          ]
        ),

        ),
        
      ),
    );
  }


  Widget welcome(){
    return Center(
                  child: new Text("Welcome Back",
                  style: new TextStyle(
                    color: Colors.orange.shade700,
                    fontFamily: 'Poppins-Bold',
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                  ),   
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
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: 200.0,
        height: 60.0,
        child: OutlineButton(
          child: Text(
            "Login In ",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 23.0,
            ),
          ),
          // color: Colors.orange.shade700,
      
          onPressed: () async {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();
              print('Time to post $email and $password to my API');
            }

            // setState(() {
            //   Navigator.of(context).pushNamed('/SignUpArtistPage');
            // });
          },
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
      ),
    );
  }


  // Widget submitButton() {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: 16.0),
  //     child: Material(
  //       borderRadius: BorderRadius.circular(80.0),
  //       child: MaterialButton(
  //         minWidth: 200.0,
  //         height: 60.0,
  //         onPressed: () {
  //           if (formKey.currentState.validate()) {
  //             formKey.currentState.save();
  //             print('Time to post $email and $password to my API');
  //           }
  //         },
  //         color: Colors.orange.shade700,
  //         child: Text(
  //           "Login In",
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget forgetPassword() {
    return FlatButton(
      child: Text(
        'Forget password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget or() {
    return Center(
      child: new Text(
        "Or",
        style: new TextStyle(
          color: Colors.orange.shade700,
          fontFamily: 'Poppins-Bold',
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget facebookLogin() {
    return GestureDetector(
      onTap: () {
        setState(() {
          
          Navigator.of(context).pushNamed('/LogInPage');
        
        });
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 42.0,
        child: Image.asset('assets/images/facebook-btn.png'),
      ),
    );
  }

  Widget gmailLogin() {
    return GestureDetector(
      onTap: () {
        setState(() {
          // _url = getNewCatUrl();

          Navigator.of(context).pushNamed('/LogInPage');
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


}
