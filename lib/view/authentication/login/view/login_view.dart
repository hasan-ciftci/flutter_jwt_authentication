import 'package:flutter/material.dart';
import 'package:jwt_authentication/core/base/state/base_state.dart';
import 'package:jwt_authentication/view/authentication/login/modelview/login_view_model.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView> {
  late final LoginViewModel loginModelView;
  bool isLoading = false;

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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(.05)),
        child: Column(
          children: [
            buildTextFormFieldUsername(),
            buildTextFormFieldPassword(),
            buildElevatedButtonLogin()
          ],
        ),
      ),
    );
  }

  ElevatedButton buildElevatedButtonLogin() {
    return ElevatedButton(
      onPressed: !isLoading
          ? () async {
              setState(() {
                isLoading = !isLoading;
              });
              await loginModelView.loginUser();
              setState(() {
                isLoading = !isLoading;
              });
            }
          : null,
      child:
          !isLoading ? buildNormalButtonContent() : buildLoadingButtonContent(),
    );
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

  FractionallySizedBox buildNormalButtonContent() {
    return FractionallySizedBox(
        widthFactor: 1, child: Center(child: Text("Giriş")));
  }

  Row buildLoadingButtonContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Yükleniyor"),
        SizedBox(
          width: 5,
        ),
        SizedBox(height: 15, width: 15, child: CircularProgressIndicator()),
      ],
    );
  }
}
