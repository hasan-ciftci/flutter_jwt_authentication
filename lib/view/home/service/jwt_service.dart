import 'package:jwt_authentication/core/constants/preferences_keys.dart';
import 'package:jwt_authentication/core/init/cache/preferences_manager.dart';
import 'package:jwt_authentication/view/authentication/login/model/jwt_user_model.dart';
import 'package:jwt_authentication/view/home/service/IJwtService.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class JwtService implements IJwtService {
  @override
  String? getTokenFromPreferences() {
    return PreferencesManager.instance.getStringValue(PreferencesKeys.TOKEN);
  }

  @override
  JwtUser? parseToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    JwtUser jwtUser = JwtUser.fromJson(decodedToken);
    return jwtUser;
  }
}
