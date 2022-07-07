import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

Widget body(BuildContext context) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff262626),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 17,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Ellipse.png',
                    width: 33,
                    height: 33,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Billie Geulish',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Musisi',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffA5A5A5),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/dot.png',
                            width: 4,
                            height: 18,
                            color: const Color(0xffF6F7FC),
                          ),
                          Image.asset(
                            'assets/icons/dot.png',
                            width: 4,
                            height: 18,
                            color: const Color(0xffA5A5A5),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Text(
                            'Follow',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '2 days ago',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffA5A5A5),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: const Color(0xff181818),
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/Megaphone.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                    title: Text(
                                      'Laporkan',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF52936),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/Flag.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                    title: Text(
                                      'Blokir Thread',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF6F7FC),
                                      ),
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          'assets/icons/Option_Button.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                'Menguak lokasi asli dari desa tempat KKN DESA DANCE?!',
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F5FC),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui, integer dignissim imperdiet tempor, scelerisque urna a, bibendum. Congue orci lorem consectetur nibh a pharetra mi sit pellentesque.',
                trimLines: 3,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read Less',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/image_thred.png',
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xff262626),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: const Color(0xff464646),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/arrow-up.png',
                            width: 13,
                            height: 13,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '102 K',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffF6F7FC),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xff262626),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: const Color(0xff464646),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/arrow-down.png',
                        width: 13,
                        height: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    'assets/icons/message-circle.png',
                    width: 12,
                    height: 12,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Comment',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffF6F7FC),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: const Color(0xff181818),
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  'assets/icons/Link.png',
                                  width: 32,
                                  height: 32,
                                ),
                                title: Text(
                                  'Salin Tautan',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffF6F7FC),
                                  ),
                                ),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Image.asset(
                                  'assets/icons/share.png',
                                  width: 25,
                                  height: 25,
                                ),
                                title: Text(
                                  'Bagikan ke..',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffF6F7FC),
                                  ),
                                ),
                                onTap: () {},
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/icons/share.png',
                      width: 13,
                      height: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/pic.png',
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: const Color(0xff181818),
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/Megaphone.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                    title: Text(
                                      'Laporkan',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF52936),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/Flag.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                    title: Text(
                                      'Blokir Thread',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF6F7FC),
                                      ),
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          'assets/icons/Option_Button.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wah ternyata deket sama kampung saya itu, \n500 km lah kira-kira jaraknya. Ketik 1 untuk \nshare location',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffF6F7FC),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_outline,
                            size: 17,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          Text(
                            'replay',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffA5A5A5),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}
