import 'dart:async';
import 'dart:convert';

import '../auth/api.dart';
import '../auth/constants.dart';

class ApiLogin {
  ApiLogin({
    this.uname, this.pass
  });

  String uname = '';
  String pass = '';
  String endpoint = '/api/login/';
  SignUpModel usuario = new SignUpModel();

  Future<SignUpModel> login() async {

    // IMPORTANT: NEVER EVER USE 127.0.0.1 NOR localhost as this.host
    // Because either are different from Server and Device
    Api.hcc.port = 8000;  // Your Server PORT
    Api.hcc.host = 'YOUR_IP_SERVER'; // Your Server IP (Never use 127.0.0.1 nor localhost

    Result result = await Api.api.post(this.endpoint, mbody:
        {'username': this.uname, 'password': this.pass}, saveCookies: true,
    );

    if (result.estado == Co.ERROR) {
      // TODO: Error ejecutando el API haciendo Login
    } else {
      // TODO: switch de estados según HTTP
      if (result.estado == 200) {
        Map body = json.decode(result.objeto);
        if (body.containsKey('token'))
          if (body['token'].isNotEmpty) {
            SignUpModel apiUsuario = new SignUpModel.fromJson(body);
            return apiUsuario;
          }
        if (body.containsKey('key'))
          if (body['key'].isNotEmpty) {
            SignUpModel apiUser = new SignUpModel.fromJson(body);
            apiUser.username = this.uname;
            return apiUser;
          }
      }
    }
    return null;
  }
}

class SignUpModel {
  int pk = 0;
  String username = '';
  String email = '';
  String firstName = '';
  String lastName = '';
  String token = '';
  String xCSRFToken = '';
  String error = '';

  SignUpModel({
    this.pk = 0, 
    this.username = '', 
    this.email = '', 
    this.firstName = '',
    this.lastName = '', 
    this.token = '', 
    this.xCSRFToken = '', 
    this.error = ''
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return new SignUpModel(
      // token: json['key'],
      token: json['token'],
      pk: json['user']['pk'],
      username: json['user']['username'],
      email: json['user']['email'],
      firstName: json['user']['first_name'],
      lastName: json['user']['last_name'],
      xCSRFToken: json['xCSRFToken'],
      // username: username,
    );
    
  }
}
