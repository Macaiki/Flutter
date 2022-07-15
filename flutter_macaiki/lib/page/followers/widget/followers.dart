import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/followers/widget/followers_list.dart';

class Followers extends StatelessWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 30,
        ),
        child: ListView(
          children: const [
            FollowersList(),
          ],
        ),
      ),
    );
  }
}
