import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/get_thereads.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class GetThereadService {
  Future<GetThreads?> getThereades() async {
    try {
      final response = await Dio().get('${Endpoint1.url}/threads');
      return GetThreads.fromJson(response.data);
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }
}
