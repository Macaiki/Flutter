import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/create_threads.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class CreateThreadsService {
  Future<CreateThreads?> createThreads(
      final String title, final String body) async {
    try {
      final data = {
        title: "title",
        body: "body",
      };
      final response = await Dio().post(
        '${Endpoint1.url}/threads',
        data: data,
      );
      print(response.data);
      return CreateThreads.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
