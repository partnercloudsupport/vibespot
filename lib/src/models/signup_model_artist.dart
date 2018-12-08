import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';


import 'package:vibespot/src/auth/api.dart';
import 'package:vibespot/src/auth/constants.dart';



Future<SignUpModelArtist> fetchPost() async {
  final response = await http.post(
    'http://167.99.110.73/api/v1/member/create/artist/',
    headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
  );
  final responseJson = json.decode(response.body);

  return SignUpModelArtist.fromJson(responseJson);
}


// class ApiLogin {
//   ApiLogin({
//      this.username, this.password, 
//   });

//   // int id;
//   String username = '';
//   // String email = '';
//   String password = '';
//   // String name = '';
//   String endpoint = '/api/v1/member/create/artist/';
//   SignUpModelArtist user = new SignUpModelArtist();



//   Future<SignUpModelArtist> register() async {

//     ApiVibespot.hcc.port = 8000;  // Your Server PORT
//     ApiVibespot.hcc.host = '167.99.110.73'; //'YOUR_IP_SERVER'; // Your Server IP (Never use 127.0.0.1 nor localhost

//     Result result = await ApiVibespot.api.post(this.endpoint, mbody:
//         { 'username': this.username,  'password': this.password, }, saveCookies: true,
//     );

//     if (result.state == Co.ERROR) {
//       // TODO: Error ejecutando el API haciendo Login
//     } else {
//       // TODO: switch de estados según HTTP
//       if (result.state == 200) {
//         Map body = json.decode(result.object);
//         if (body.containsKey('token'))
//           if (body['token'].isNotEmpty) {
//             SignUpModelArtist signupmodelartist = new SignUpModelArtist.fromJson(body);
//             return signupmodelartist;
//           }
//         if (body.containsKey('key'))
//           if (body['key'].isNotEmpty) {
//             SignUpModelArtist signupmodelartist = new SignUpModelArtist.fromJson(body);
//             signupmodelartist.username = this.username;
//             return signupmodelartist;
//           }
//       }
//     }
//     return null;
//   }
// }

class SignUpModelArtist {
  int pk = 0;
  String username = '';
  String email = '';
  String name = '';
  String token = '';
  String xCSRFToken = '';
  String error = '';

  SignUpModelArtist({
    this.pk = 0, 
    this.username = '', 
    this.email = '', 
    this.name = '',
    this.token = '', 
    this.xCSRFToken = '', 
    this.error = ''
  });

  factory SignUpModelArtist.fromJson(Map<String, dynamic> json) {
    return new SignUpModelArtist(
      // token: json['key'],
      token: json['token'],
      pk: json['user']['pk'],
      username: json['user']['username'],
      email: json['user']['email'],
      name: json['user']['name'],
      xCSRFToken: json['xCSRFToken'],
      // username: username,
    );
    
  }
}
