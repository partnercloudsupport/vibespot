

class UserModel {
  int pk = 0;
  String username = '';
  String email = '';
  String firstName = '';
  String lastName = '';
  String token = '';
  String xCSRFToken = '';
  String error = '';

  UserModel(
      {this.pk = 0,
      this.username = '',
      this.email = '',
      this.firstName = '',
      this.lastName = '',
      this.token = '',
      this.xCSRFToken = '',
      this.error = ''}
      );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return new UserModel(
      token: json['token'],
      pk: json['user']['pk'],
      username: json['user']['username'],
      email: json['user']['email'],
      firstName: json['user']['first_name'],
      lastName: json['user']['last_name'],
      xCSRFToken: json['xCSRFToken'],
    );
  }
}
