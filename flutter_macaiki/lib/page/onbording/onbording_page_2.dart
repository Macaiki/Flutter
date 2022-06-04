import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordingPage2 extends StatelessWidget {
  const OnbordingPage2({Key? key}) : super(key: key);

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
                  'assets/images/onbording1_images.png',
                  height: 315.07,
                  width: 305.23,
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  'Dikasih info mazeh!',
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
                  'Temukan pengetahuan, cerita, hobi, dan pengalaman unik dan bagikan isi pikiranmu',
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
