
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';



Future<LoginModel> fetchPost() async {
  final response = await http.post(
    'http://167.99.110.73/api/v1/login/',
    headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
  );
  final responseJson = json.decode(response.body);

  return LoginModel.fromJson(responseJson);
}



class LoginModel {
  final String username;
  final String token;
  final String email;
  final String password;
  final int id;

  LoginModel(this.username, this.token, this.email, this.password, this.id);

  LoginModel.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        token = json['token'],
        email = json['email'],
        password = json['password'],
        id = json['id'];

  Map<String, dynamic> toJson() =>
      {
        'username': username,
        'token': token,
        'email': email,
        'password':password,
        'id': id,
      };

 }




 // class LoginModel1 {
//   String _username;
//   String _password;

//   LoginModel1(
//     this._username, 
//     this._password
//     );

//   Future<List<LoginModel1>> loginUser() async {
//         final response = await http.post('https://api.github.com/users');
//         print(response.body);
//         List responseJson = json.decode(response.body.toString());
//         List<LoginModel1> userList = createUserList(responseJson);
//         return userList;
// }

//   LoginModel1.map(dynamic obj) {
//     this._username = obj["username"];
//     this._password = obj["password"];
//   }

//   String get username => _username;
//   String get password => _password;

//   Map<String, dynamic> toMap() {
//     var map = new Map<String, dynamic>();
//     map["username"] = _username;
//     map["password"] = _password;

//     return map;
//   }
// }