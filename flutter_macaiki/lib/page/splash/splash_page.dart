import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/Macaiki_images.png',
                  height: 100,
                  width: 181,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
