import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/comment/widget/body.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        backgroundColor: const Color(0xff181818),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Image.asset(
              'assets/icons/Bookmark.png',
              height: 32,
              width: 32,
            ),
          ),
        ],
      ),
      body: body(context),
    );
  }
}
