// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_macaiki/model/get_thereads.dart';
import 'package:flutter_macaiki/utill/endpoint.dart';

class UpVoteService {
  Future<GetThreads?> upVote(final int id) async {
    try {
      final response = await Dio().post(
        '${Endpoint1.url}/threads/$id/upvotes',
      );
      print(response.data);
      return GetThreads.fromJson(response.data);
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return null;
  }
}
