import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/home/home_page.dart';
import 'package:flutter_macaiki/page/profile/widget/cover_image.dart';
import 'package:flutter_macaiki/page/profile/widget/navbar.dart';
import 'package:flutter_macaiki/page/profile/widget/profile_picture.dart';
import 'package:flutter_macaiki/page/profile/widget/your_post.dart';
import 'package:flutter_macaiki/provider/get_user_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<GetUserProvider>(context, listen: false).getUserToken();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff262626),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff181818),
            ),
            child: Column(
              children: [
                coverImage(),
                ProfilePicture(),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff181818),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Post',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    yourPost(context)
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
