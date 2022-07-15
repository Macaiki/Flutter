import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/create_threads.dart';
import 'package:flutter_macaiki/page/home/home_page.dart';
import 'package:flutter_macaiki/service/create_threads_service.dart';

enum StateProvider { isSuccess, isLoading, isError }

class CreateThreadProvider extends ChangeNotifier {
  final CreateThreadsService createThreadsService = CreateThreadsService();
  CreateThreads? createThreads;
  StateProvider? stateProvider;

  void create(
    final String title,
    final String body,
    BuildContext context,
  ) async {
    stateProvider = StateProvider.isLoading;
    notifyListeners();
    createThreads = await createThreadsService.createThreads(
      title,
      body,
    );
    if (createThreads == null) {
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false,
      );
    }
    notifyListeners();
  }
}
