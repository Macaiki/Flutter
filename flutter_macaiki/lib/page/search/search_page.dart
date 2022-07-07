import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/search/widget/history_widget.dart';
import 'package:flutter_macaiki/page/search/widget/popular_widget.dart';
import 'package:flutter_macaiki/page/search/widget/search_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 20,
              right: 20,
            ),
            child: searchWidget(context),
          ),
          const Divider(
            height: 22,
            thickness: 1,
            color: Color(0xff262626),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            child: historyWidget(),
          ),
          const Divider(
            thickness: 5,
            height: 30,
            color: Color(0xff262626),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            child: popularWidget(),
          ),
        ],
      ),
    );
  }
}
