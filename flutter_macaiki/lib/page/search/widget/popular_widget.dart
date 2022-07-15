import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget popularWidget() {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular',
            style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          Image.asset(
            'assets/icons/Fire.png',
            width: 17,
            height: 17,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'A day as UI/UX designer',
            style: GoogleFonts.poppins(
              color: const Color(0xffF6F7FC),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        children: [
          Image.asset(
            'assets/icons/Fire.png',
            width: 17,
            height: 17,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Tips diet ala artis Korea',
            style: GoogleFonts.poppins(
              color: const Color(0xffF6F7FC),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}
