import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordingPage2 extends StatelessWidget {
  const OnbordingPage2({Key? key}) : super(key: key);

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
            'assets/images/onbording1_images.png',
            height: 315.07,
            width: 305.23,
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'Dikasih info mazeh!',
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
            'Temukan pengetahuan, cerita, hobi, dan pengalaman unik dan bagikan isi pikiranmu',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 41,
                width: 81,
                decoration: BoxDecoration(
                  color: const Color(0xffBC6FF1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
