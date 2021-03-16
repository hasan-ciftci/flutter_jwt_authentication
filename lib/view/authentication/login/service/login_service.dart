import 'package:jwt_authentication/core/constants/api_constants.dart';
import 'package:jwt_authentication/core/init/network/network_manager.dart';
import 'package:jwt_authentication/view/authentication/login/model/login_model.dart';
import 'package:jwt_authentication/view/authentication/login/service/ILoginService.dart';

class LoginService extends ILoginService {
  @override
  Future loginUser(LoginModel model) async {
    return await NetworkManager.instance
        .dioPost(ApiConstants.LOGIN_ENDPOINT, model);
  }
}
