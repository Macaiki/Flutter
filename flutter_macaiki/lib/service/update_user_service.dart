import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/update_user_model.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class UpdateUserService {
  Future<UpdateUserModel?> updateUser(
    final int id,
    final String email,
    final String username,
    final String name,
    final String bio,
    final String proffesion,
    final String role,
    final bool isBanned,
  ) async {
    try {
      final body = {
        email: "email",
        username: "username",
        name: "name",
        bio: "bio",
        proffesion: "proffesion",
        role: "role",
        isBanned: "isBanned",
      };
      final response = await Dio().put(
        '${Endpoint1.url}/users/' + id.toString(),
        data: body,
      );
      return UpdateUserModel.fromJson(response.data);
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return null;
  }
}
