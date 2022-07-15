import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/splash/splash_page.dart';
import 'package:flutter_macaiki/provider/auth_provider.dart';
import 'package:flutter_macaiki/provider/create_thread_provider.dart';
import 'package:flutter_macaiki/provider/delete_threads_provider.dart';
import 'package:flutter_macaiki/provider/get_all_user_provider.dart';
import 'package:flutter_macaiki/provider/get_threads_provider.dart';
import 'package:flutter_macaiki/provider/get_user_provider.dart';
import 'package:flutter_macaiki/provider/up_vote_provider.dart';
import 'package:flutter_macaiki/provider/update_user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => AuthProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => GetUserProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => GetThreadsProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => GetAllUserProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => UpdateUserProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => CreateThreadProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => DeleteThreadsProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => UpVoteProvider()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x00181818),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
