import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/get_all_user_model.dart';
import 'package:flutter_macaiki/service/get_all_user_service.dart';

class GetAllUserProvider extends ChangeNotifier {
  final GetAllUserService getAllUserService = GetAllUserService();
  GetAllUserModel? getAllUserModel;

  Future<GetAllUserModel?> getAllUser() async {
    getAllUserModel = await getAllUserService.getAllUser();
    notifyListeners();
    return getAllUserModel;
  }
}
