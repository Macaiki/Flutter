import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget coverImage(BuildContext context) {
  return Stack(
    children: [
      Container(
        height: 144,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Frame63.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          right: 15,
          top: 10,
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: InkWell(
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
                          'assets/icons/share.png',
                          width: 25,
                          height: 25,
                        ),
                        title: Text(
                          'Share Community',
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
                          'Blokir',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffF6F7FC),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  );
                },
              );
            },
            child: Image.asset(
              'assets/icons/option.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/Left.png',
              width: 32,
              height: 32,
            ),
          ),
        ),
      )
    ],
  );
}
