import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/login/login_page.dart';
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
      backgroundColor: Color(0xff181818),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                  color: const Color(0xffBC6FF1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Password kamu sudah berhasil diganti. \nSekarang Login dengan password baru mu!',
                style: GoogleFonts.poppins(
                  color: const Color(0xfff6f7fc),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffbc6ff1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  splashColor: const Color(0xffbc6ff1),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const LoginPage()),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Confrim',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xfff6f7fc),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
