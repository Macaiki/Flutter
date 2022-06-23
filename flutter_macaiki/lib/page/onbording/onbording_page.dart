import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/onbording/onbording_page_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onbording_page_2.dart';

class OnbordingPage extends StatefulWidget {
  OnbordingPage({Key? key}) : super(key: key);

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnbordingPage1(),
              OnbordingPage2(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
