
// class LoginModel {
//   String _username;
//   String _password;

//   LoginModel(this._username, this._password);

//   Future<List<LoginModel>> fetchUsersFromGitHub() async {
//         final response = await http.get('https://api.github.com/users');
//         print(response.body);
//         List responseJson = json.decode(response.body.toString());
//         List<LoginModel> userList = createUserList(responseJson);
//         return userList;
// }

//   LoginModel.map(dynamic obj) {
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