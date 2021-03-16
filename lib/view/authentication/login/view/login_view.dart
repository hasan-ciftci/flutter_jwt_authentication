import 'package:flutter/material.dart';
import 'package:jwt_authentication/core/base/state/base_state.dart';
import 'package:jwt_authentication/view/authentication/login/modelview/login_view_model.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  late final LoginViewModel loginModelView;

  @override
  void initState() {
    super.initState();
    loginModelView = LoginViewModel();
    loginModelView.initServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildForm(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "JWT Auth App",
        style: TextStyle(color: Colors.blueAccent),
      ),
    );
  }

  Form buildForm() {
    return Form(
      key: loginModelView.formState,
      child: Column(
        children: [
          buildTextFormFieldUsername(),
          buildTextFormFieldPassword(),
          buildElevatedButtonLogin()
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButtonLogin() {
    return ElevatedButton(
        onPressed: () {
          loginModelView.loginUser();
        },
        child: Text("Giriş"));
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      controller: loginModelView.passwordController,
    );
  }

  TextFormField buildTextFormFieldUsername() {
    return TextFormField(
      controller: loginModelView.usernameController,
    );
  }
}
