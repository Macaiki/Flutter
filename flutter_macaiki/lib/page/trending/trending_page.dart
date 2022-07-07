import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/trending/widget/navbar_widget.dart';
import 'package:flutter_macaiki/page/trending/widget/search.dart';
import 'package:flutter_macaiki/page/trending/widget/trending_thread.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
            ),
            child: search(context),
          ),
          trendingThread(),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
