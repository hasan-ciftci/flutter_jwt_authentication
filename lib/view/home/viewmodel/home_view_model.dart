import 'package:jwt_authentication/view/home/model/jwt_user_model.dart';
import 'package:jwt_authentication/view/home/service/jwt_service.dart';

class HomeViewModel {
  JwtService jwtService = JwtService();
  JwtUser? jwtUser;

  initServices() {
    String? userToken = jwtService.getTokenFromPreferences();
    if (userToken != null) {
      jwtUser = jwtService.parseToken(userToken)!;
    }

    JwtUser? getJwtUser() {
      return jwtUser;
    }
  }
}
