import 'package:json_annotation/json_annotation.dart';
import 'package:jwt_authentication/core/base/model/base_model.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends BaseModel {
  final String username;
  final String password;

  LoginModel({required this.username, required this.password});

  @override
  fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LoginModelToJson(this);
  }
}
