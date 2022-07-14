import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/get_thereads.dart';
import 'package:flutter_macaiki/service/get_thereads_service.dart';

class GetThreadsProvider extends ChangeNotifier {
  final GetThereadService getThereadService = GetThereadService();
  GetThreads? getThreads;

  Future<GetThreads?> getAllThreads() async {
    getThreads = await getThereadService.getThereades();
    print(getThreads!.data!.length);
    notifyListeners();
    return getThreads;
  }
}
