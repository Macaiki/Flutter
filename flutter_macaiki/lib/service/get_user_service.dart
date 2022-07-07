import 'package:flutter_macaiki/model/get_user_by_token.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class GetUserService {
  Future<GetUserByToken?> getUserToken() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      print(await sharedPreferences.getString("token"));
      final response = await Dio().get('${Endpoint1.url}/curent-user/profile',
          options: Options(
            headers: {
              "Authorization": "Bearer ${sharedPreferences.getString('token')}"
            },
          ));
      print('sukses');
      print(response.data.toString());
      return GetUserByToken.fromJson(
        response.data,
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
