import 'package:flutter/material.dart';
import 'package:jwt_authentication/core/init/cache/preferences_manager.dart';
import 'package:jwt_authentication/core/init/navigation/navigation_routes.dart';
import 'package:jwt_authentication/core/init/navigation/navigation_service.dart';
import 'package:jwt_authentication/core/init/notifier/provider_list.dart';
import 'package:jwt_authentication/view/authentication/login/view/login_view.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PreferencesManager.preferencesInit();
  runApp(JwtAuthentication());
}

class JwtAuthentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [...ApplicationProvider.instance.dependItems],
        child: MaterialApp(
          home: LoginView(),
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: NavigationRoutes.instance.generateRoute,
        ));
  }
}
