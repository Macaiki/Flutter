import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/following/widget/following_list.dart';

class FollowingPage extends StatelessWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 30,
          ),
          child: ListView(
            children: const [
              FollowingList(),
            ],
          ),
        ));
  }
}
