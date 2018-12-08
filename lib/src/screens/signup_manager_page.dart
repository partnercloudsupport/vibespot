import 'package:flutter/material.dart';
// import '../mixins/validation_mixin.dart';
import 'package:vibespot/src/mixins/validation_mixin.dart';
import 'package:vibespot/src/models/signup_model_manager.dart';

class SignUpManagerPage extends StatefulWidget {
  createState() {
    return SignUpManagerPageState();
  }
}



class SignUpManagerPageState extends State<SignUpManagerPage> with ValidationMixin {

  SignUpModelManager user;
  final formKey = GlobalKey<FormState>();

  String recordManagerName = '';
  String email = '';
  String username = '';
  String password = '';


  final TextEditingController _recordManagerController = new TextEditingController();
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
                emailField(),
                SizedBox(height: 15.0),
                usernameField(),
                SizedBox(height: 15.0),
                passwordField(),
                SizedBox(height: 15.0),
                recordManagerNameField(),
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

 
    Widget recordManagerNameField() {
    return TextFormField(
      controller: _recordManagerController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Record manager name',
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      validator: validateManagerName,
      onSaved: (String value) {
        recordManagerName = value;
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
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: 200.0,
        height: 60.0,
        child: OutlineButton(
          child: Text(
            "Sign up ",
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
  //         onPressed: () async {
  //           if (formKey.currentState.validate()) {
  //             formKey.currentState.save();
  //             print('Time to post $email and $password to my API');
  //           }

  //            ApiRegister apiRegister = ApiRegister(uname: 'azeez', pass: 'enilolobo');
  //               user = await apiRegister.register();
  //               setState(() {

  //               });
  //               print(apiRegister.user.username);
  //             },

  //       //       child: Text('Test Login API with Azeez !'),
  //       //     ),

  //       //     // Text('User: ' + (user == null ? 'Not logged in!' : user.username)),
  //       //     // Text('Token: ' + (user == null ? 'Not logged in!' : user.token)),
      
  //       // ),
  //       //   },
  //         color: Colors.orange.shade700,
  //         child: Text(
  //           "Sign Up",
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
