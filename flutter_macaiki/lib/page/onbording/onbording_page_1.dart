import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordingPage1 extends StatelessWidget {
  const OnbordingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 160,
        right: 27,
        left: 27,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/onbording2_images.png',
            height: 315.07,
            width: 305.23,
          ),
          const SizedBox(
            height: 46,
          ),
          Text(
            'Share link dong kak',
            style: GoogleFonts.poppins(
              color: const Color(0xffBC6FF1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Bagikan tulisanmu biar seluruh dunia tau kalau kamu paling up to date',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: const Color(0xffF6F7FC),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 110,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: Container(
              height: 41,
              width: 330,
              decoration: BoxDecoration(
                color: const Color(0xffBC6FF1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'OTW Macaiki!',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
