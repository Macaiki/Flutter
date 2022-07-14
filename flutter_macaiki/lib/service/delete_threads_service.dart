import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/delete_threads.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class DeleteThreadsService {
  Future<DeleteThreads?> delete(final int id) async {
    try {
      final response = await Dio().delete('${Endpoint1.url}/threads/$id');
      print(response.data);
      return DeleteThreads.fromJson(response.data);
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return null;
  }
}
