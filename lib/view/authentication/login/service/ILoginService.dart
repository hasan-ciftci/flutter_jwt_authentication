import 'package:jwt_authentication/view/authentication/login/model/login_model.dart';

abstract class ILoginService {
  Future loginUser(LoginModel model);
}
