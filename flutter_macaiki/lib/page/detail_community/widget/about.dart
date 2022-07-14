import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget about(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      left: 15,
      right: 15,
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                color: const Color(0xffBC6FF1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xff262626),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 10,
              right: 10,
              bottom: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/Info.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Informations',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est est viverra aliquet non varius. Eget volutpat pellentesque et non at ultrices. Tellus diam auctor vitae aliquam',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffFFFFFF),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/globe.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'http://www.zoomit.com',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/users.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '5 Moderators',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/thumbs-up.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '16,5K Followers',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xff262626),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 10,
              right: 10,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moderator',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pic1.png',
                      width: 52,
                      height: 52,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paul',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7FC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '@paul_walk',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffA5A5A5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffBC6FF1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7Fc),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pic.png',
                      width: 52,
                      height: 52,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shaine',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7FC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '@Shaine',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffA5A5A5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffBC6FF1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7Fc),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pic1.png',
                      width: 52,
                      height: 52,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paul',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7FC),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '@paul_walk',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffA5A5A5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffBC6FF1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7Fc),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
