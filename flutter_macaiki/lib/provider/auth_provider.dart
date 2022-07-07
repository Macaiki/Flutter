import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/auth_model.dart';
import 'package:flutter_macaiki/service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../page/home/home_page.dart';
import '../page/login/login_page.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService authService = AuthService();
  AuthModel? user;

  void register(
    final String name,
    final String email,
    final String password,
    final String passwordConfirmation,
    final BuildContext context,
  ) async {
    user = await authService.register(
      name,
      email,
      password,
      passwordConfirmation,
    );
    if (user == null) {
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }
    notifyListeners();
  }

  void login(
    final String email,
    final String password,
    final BuildContext context,
  ) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var response = await authService.login(email, password);
    sharedPreferences.setString("token", response!.data!.token!);
    if (sharedPreferences.getString('token') == null ||
        sharedPreferences.getString('token') == '') {
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomePage()),
        ),
      );
    }
    notifyListeners();
  }
}
