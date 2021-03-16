import 'package:flutter/material.dart';
import 'package:jwt_authentication/core/components/widgets/route_not_found_widget.dart';
import 'package:jwt_authentication/core/constants/navigation_root_name_constants.dart';
import 'package:jwt_authentication/view/authentication/login/view/home_view.dart';
import 'package:jwt_authentication/view/authentication/login/view/login_view.dart';

class NavigationRoutes {
  static NavigationRoutes _instance = NavigationRoutes._init();

  static NavigationRoutes get instance => _instance;

  NavigationRoutes._init();

  Route<dynamic> generateRoute(args) {
    switch (args.name) {
      case NavigationConstants.LOGIN_VIEW:
        return normalNavigate(
          LoginView(),
        );
      case NavigationConstants.HOME_VIEW:
        return normalNavigate(
          HomeView(),
        );
      default:
        return normalNavigate(
          RouteNotFoundWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
