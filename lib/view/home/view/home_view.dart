import 'package:flutter/material.dart';
import 'package:jwt_authentication/core/base/state/base_state.dart';
import 'package:jwt_authentication/view/home/viewmodel/home_view_model.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> {
  late final HomeViewModel homeViewModel;

  @override
  void initState() {
    super.initState();
    homeViewModel = HomeViewModel();
    homeViewModel.initServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildUserInformation(),
    );
  }

  Column buildUserInformation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hoşgeldin. ${homeViewModel.jwtUser?.givenName}",
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Kullanıcı Bilgileri"),
        Text("ISS. ${homeViewModel.jwtUser?.iss}"),
        Text("EXP. ${homeViewModel.jwtUser?.exp}"),
        Text(
            "ROLE. ${homeViewModel.jwtUser?.httpSchemasMicrosoftComWs200806IdentityClaimsRole}"),
        Text("JTI. ${homeViewModel.jwtUser?.jti}"),
        Text("NBF. ${homeViewModel.jwtUser?.nbf}"),
        FittedBox(
            child: Text("UNIQUE NAME. ${homeViewModel.jwtUser?.uniqueName}")),
      ],
    );
  }
}
