import 'package:jwt_authentication/core/base/model/base_model.dart';

class LoginModel extends BaseModel {
  String? username;
  String? password;

  LoginModel({this.username, this.password});

  @override
  fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
