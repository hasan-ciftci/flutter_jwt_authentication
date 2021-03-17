import 'package:flutter/material.dart';
import 'package:jwt_authentication/view/authentication/login/model/login_model.dart';
import 'package:jwt_authentication/view/authentication/login/service/login_service.dart';

class LoginViewModel extends ChangeNotifier {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  late LoginService _loginService;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  initServices() {
    _loginService = LoginService();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future loginUser() async {
    final userModel = LoginModel(
        username: usernameController.text, password: passwordController.text);
    await _loginService.loginUser(userModel);
  }
}
