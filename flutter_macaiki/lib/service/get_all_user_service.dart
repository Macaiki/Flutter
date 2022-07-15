import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/get_all_user_model.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class GetAllUserService {
  Future<GetAllUserModel?> getAllUser() async {
    try {
      final response = await Dio().get('${Endpoint1.url}/users');
      return GetAllUserModel.fromJson(response.data);
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }
}
