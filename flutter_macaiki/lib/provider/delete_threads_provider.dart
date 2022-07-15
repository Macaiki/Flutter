import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/delete_threads.dart';
import 'package:flutter_macaiki/service/delete_threads_service.dart';

class DeleteThreadsProvider extends ChangeNotifier {
  final DeleteThreadsService deleteThreadsService = DeleteThreadsService();
  DeleteThreads? deleteThreads;

  void delete(final int id, BuildContext context) async {
    deleteThreads = await deleteThreadsService.delete(id);
    if (deleteThreads == null) {
      Navigator.pop(context);
    }
    notifyListeners();
  }
}
