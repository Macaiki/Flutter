import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/detail_community/widget/about.dart';
import 'package:flutter_macaiki/page/detail_community/widget/cover_image.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAboutCommunity extends StatelessWidget {
  const DetailAboutCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff262626),
            ),
            child: Column(
              children: [
                coverImage(context),
                Container(
                  transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 43,
                            backgroundImage:
                                AssetImage('assets/images/Ellipse5.png'),
                          ),
                          Container(
                            width: 99,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xffBC6FF1),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xffF7F6FC),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'DIY & Home',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffF6F7FC),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Community',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffA5A5A5),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Image.asset(
                            'assets/icons/Info.png',
                            width: 24,
                            height: 24,
                            color: const Color(0xffC787F3),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          about(context),
        ],
      ),
    );
  }
}
