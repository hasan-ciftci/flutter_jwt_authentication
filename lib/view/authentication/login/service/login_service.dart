import 'package:jwt_authentication/core/constants/api_constants.dart';
import 'package:jwt_authentication/core/constants/navigation_root_name_constants.dart';
import 'package:jwt_authentication/core/constants/preferences_keys.dart';
import 'package:jwt_authentication/core/init/cache/preferences_manager.dart';
import 'package:jwt_authentication/core/init/navigation/navigation_service.dart';
import 'package:jwt_authentication/core/init/network/network_manager.dart';
import 'package:jwt_authentication/view/authentication/login/model/login_model.dart';
import 'package:jwt_authentication/view/authentication/login/model/login_response_model.dart';
import 'package:jwt_authentication/view/authentication/login/service/ILoginService.dart';

class LoginService extends ILoginService {
  @override
  Future loginUser(LoginModel model) async {
    final loginResponse = await NetworkManager.instance
        .dioPost(ApiConstants.LOGIN_ENDPOINT, model);

    LoginResponseModel loginResponseModel =
        LoginResponseModel.fromJson(loginResponse);

    if (loginResponseModel.data?.accessToken != null) {
      final token = loginResponseModel.data!.accessToken!;
      await saveTokenToPreferences(token);
      NavigationService.instance
          .navigateToPage(path: NavigationConstants.HOME_VIEW);
    }
  }

  saveTokenToPreferences(String token) async {
    await PreferencesManager.instance
        .setStringValue(PreferencesKeys.TOKEN, token);
  }
}
