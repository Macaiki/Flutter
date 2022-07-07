import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget historyWidget() {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'History',
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
            'assets/icons/History.png',
            width: 17,
            height: 17,
            color: const Color(0xffA5A5A5),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Indome hack',
            style: GoogleFonts.poppins(
              color: const Color(0xffA5A5A5),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            'assets/icons/X.png',
            width: 15,
            height: 15,
            color: const Color(0xffA5A5A5),
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        children: [
          Image.asset(
            'assets/icons/History.png',
            width: 17,
            height: 17,
            color: const Color(0xffA5A5A5),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Johnny Depp',
            style: GoogleFonts.poppins(
              color: const Color(0xffA5A5A5),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            'assets/icons/X.png',
            width: 15,
            height: 15,
            color: const Color(0xffA5A5A5),
          ),
        ],
      ),
    ],
  );
}
