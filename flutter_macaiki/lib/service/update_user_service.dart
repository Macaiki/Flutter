import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/update_user_model.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateUserService {
  Future<UpdateUserModel?> updateUser(
    final String name,
    final String bio,
    final String proffesion,
  ) async {
    try {
      final body = {
        name: "name",
        bio: "bio",
        proffesion: "proffesion",
      };
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final response = await Dio().put(
        '${Endpoint1.url}/curent-user/profile',
        options: Options(
          headers: {
            "Authorization": "Bearer ${sharedPreferences.getString('token')}"
          },
        ),
        data: body,
      );
      print(body);
      print(response.data.toString());
      return UpdateUserModel.fromJson(response.data);
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return null;
  }
}
