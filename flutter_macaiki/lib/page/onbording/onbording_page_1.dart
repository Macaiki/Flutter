import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordingPage1 extends StatelessWidget {
  const OnbordingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                const Spacer(),
                Image.asset(
                  'assets/images/onbording2_images.png',
                  height: 315.07,
                  width: 305.23,
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  'Share link dong kak',
                  style: GoogleFonts.poppins(
                    color: Color(0x00BC6FF1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Bagikan tulisanmu biar seluruh dunia tau kalau kamu paling up to date',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Color(0x00F6F7FC),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
