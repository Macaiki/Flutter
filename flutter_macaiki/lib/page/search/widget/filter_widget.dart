import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget filterWidget(String name) {
  return Container(
    width: 80,
    decoration: BoxDecoration(
      color: const Color(0xff181818),
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: const Color(0xffBC6FF1),
      ),
    ),
    child: Center(
      child: Text(
        name,
        style: GoogleFonts.poppins(
          color: const Color(0xffBC6FF1),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
