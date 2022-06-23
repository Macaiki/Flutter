import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/auth_model.dart';
import 'package:flutter_macaiki/model/login_model.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<AuthModel?> register(
    final String name,
    final String email,
    final String password,
    final String passwordConfirmation,
  ) async {
    try {
      final body = {
        "name": name,
        "email": email,
        "password": password,
        "passwordConfirmation": passwordConfirmation,
      };

      print(body.toString());
      final response = await Dio().post(
        '${Endpoint1.url}/register',
        data: body,
      );
      var authModel = AuthModel.fromJson(
        response.data,
      );
      return authModel;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<LoginModel?> login(
    final String email,
    final String password,
  ) async {
    try {
      final body = {
        "email": email,
        "password": password,
      };
      print(body.toString());
      final response = await Dio().post(
        '${Endpoint1.url}/login',
        data: body,
      );
      return LoginModel.fromJson(
        response.data,
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
