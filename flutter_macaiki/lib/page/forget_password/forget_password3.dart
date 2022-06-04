import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasword3 extends StatefulWidget {
  const ForgetPasword3({Key? key}) : super(key: key);

  @override
  State<ForgetPasword3> createState() => _ForgetPasword3State();
}

class _ForgetPasword3State extends State<ForgetPasword3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(20, 20, 20, 20),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Gambar Bulan
            Column(
              children: [
                Image.asset(
                  'assets/images/forget_pass3.png',
                  height: 288.9,
                  width: 282.44,
                ),
              ],
            ),
            SizedBox(
              height: 32.1,
            ),
            Text(
              'YEAY!',
              style: GoogleFonts.poppins(
                  color: const Color(0x00BC6FF1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Login dulu yuk, agar bisa menikmati fitur-fitur Macaiki dengan nyaman.',
              style: GoogleFonts.poppins(
                color: const Color(0x00f6f7fc),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x00bc6ff1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  splashColor: const Color(0x00bc6ff1),
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0x00f6f7fc),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
