import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_macaiki/page/onbording/onbording_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: 'assets/images/Macaiki_images.png',
      nextScreen: const OnbordingPage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xff181818),
    );
  }
}
