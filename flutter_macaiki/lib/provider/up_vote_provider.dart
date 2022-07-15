import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/get_thereads.dart';
import 'package:flutter_macaiki/service/up_vote_service.dart';

class UpVoteProvider extends ChangeNotifier {
  final UpVoteService upVoteService = UpVoteService();
  GetThreads? getThreads;

  void upVote(final int id, BuildContext context) async {
    getThreads = await upVoteService.upVote(id);
    notifyListeners();
  }
}
