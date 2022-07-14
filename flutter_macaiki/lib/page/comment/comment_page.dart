import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/comment/widget/body.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: body(context),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff181818),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.asset(
                'assets/images/pic.png',
                width: 28,
                height: 28,
              ),
              const SizedBox(
                width: 17,
              ),
              SizedBox(
                width: 256,
                height: 34,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0xff262626),
                    filled: true,
                    hintText: 'Write your comment',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xffA5A5A5),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Image.asset(
                'assets/icons/Send.png',
                width: 32,
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
