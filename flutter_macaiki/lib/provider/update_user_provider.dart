import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/update_user_model.dart';
import 'package:flutter_macaiki/page/profile/profile_page.dart';
import 'package:flutter_macaiki/service/update_user_service.dart';

enum StateProvider { isSuccess, isLoading, isError }

class UpdateUserProvider extends ChangeNotifier {
  final UpdateUserService updateUserService = UpdateUserService();
  UpdateUserModel? updateUserModel;
  StateProvider? stateProvider;

  void update(
    final String name,
    final String bio,
    final String proffesion,
    BuildContext context,
  ) async {
    stateProvider = StateProvider.isLoading;
    notifyListeners();
    updateUserModel = await updateUserService.updateUser(
      name,
      bio,
      proffesion,
    );
    if (updateUserModel == null) {
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        ),
      );
    }
    notifyListeners();
  }
}
