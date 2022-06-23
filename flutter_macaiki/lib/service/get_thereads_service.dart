import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/get_thereads.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class GetThereadService {
  Future<GetThreads?> getThereades() async {
    try {
      final response = await Dio().get('${Endpoint1.url}/threads');
      return GetThreads.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
