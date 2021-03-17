import 'package:jwt_authentication/view/authentication/login/model/jwt_user_model.dart';

abstract class IJwtService {
  String? getTokenFromPreferences() {}

  JwtUser? parseToken(String token) {}
}
