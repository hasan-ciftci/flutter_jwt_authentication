import 'package:jwt_authentication/view/home/model/jwt_user_model.dart';

abstract class IJwtService {
  String? getTokenFromPreferences() {}

  JwtUser? parseToken(String token) {}
}
