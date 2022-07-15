import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/get_user_by_token.dart';
import 'package:flutter_macaiki/service/get_user_service.dart';

class GetUserProvider extends ChangeNotifier {
  final GetUserService getUserService = GetUserService();
  GetUserByToken? getUser;

  Future<GetUserByToken?> getUserToken() async {
    getUser = await getUserService.getUserToken();
    notifyListeners();
    return getUser;
  }
}
