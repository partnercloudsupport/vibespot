import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';


import 'package:vibespot/src/auth/api.dart';
import 'package:vibespot/src/auth/constants.dart';



Future<SignUpModelManager> fetchPost() async {
  final response = await http.post(
    'http://167.99.110.73/api/v1/member/create/manager/',
    headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
  );
  final responseJson = json.decode(response.body);

  return SignUpModelManager.fromJson(responseJson);
}


// class ApiRegister {
//   ApiRegister({
//     this.uname, this.pass
//   });

//   String uname = '';
//   String pass = '';
//   String endpoint = '/api/v1/member/create/artist/';
//   SignUpModel user = new SignUpModel();

//   Future<SignUpModel> register() async {

//     // IMPORTANT: NEVER EVER USE 127.0.0.1 NOR localhost as this.host
//     // Because either are different from Server and Device
//     ApiVibespot.hcc.port = 8000;  // Your Server PORT
//     ApiVibespot.hcc.host = '167.99.110.73'; //'YOUR_IP_SERVER'; // Your Server IP (Never use 127.0.0.1 nor localhost

//     Result result = await ApiVibespot.api.post(this.endpoint, mbody:
//         {'username': this.uname, 'password': this.pass}, saveCookies: true,
//     );

//     if (result.state == Co.ERROR) {
//       // TODO: Error ejecutando el API haciendo Login
//     } else {
//       // TODO: switch de estados según HTTP
//       if (result.state == 200) {
//         Map body = json.decode(result.object);
//         if (body.containsKey('token'))
//           if (body['token'].isNotEmpty) {
//             SignUpModel signupmodel = new SignUpModel.fromJson(body);
//             return signupmodel;
//           }
//         if (body.containsKey('key'))
//           if (body['key'].isNotEmpty) {
//             SignUpModel signupmodel = new SignUpModel.fromJson(body);
//             signupmodel.username = this.uname;
//             return signupmodel;
//           }
//       }
//     }
//     return null;
//   }
// }

class SignUpModelManager {
 int pk = 0;
  String username = '';
  String email = '';
  String name = '';
  String token = '';
  String xCSRFToken = '';
  String error = '';

  SignUpModelManager({
      this.pk = 0, 
    this.username = '', 
    this.email = '', 
    this.name = '',
    this.token = '', 
    this.xCSRFToken = '', 
    this.error = ''
  });

  factory SignUpModelManager.fromJson(Map<String, dynamic> json) {
    return new SignUpModelManager(
      // token: json['key'],
      token: json['token'],
      pk: json['user']['pk'],
      username: json['user']['username'],
      email: json['user']['email'],
      name: json['user']['name'],
      xCSRFToken: json['xCSRFToken'],
    );
    
  }
}
