import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword1 extends StatefulWidget {
  ForgetPassword1({Key? key}) : super(key: key);

  @override
  State<ForgetPassword1> createState() => _ForgetPassword1State();
}

class _ForgetPassword1State extends State<ForgetPassword1> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Password reset',
              style: GoogleFonts.poppins(
                color: const Color(0x00BC6FF1),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Masukan email kamu, kami akan mengirimkan link untuk mengganti password mu.',
              style: GoogleFonts.poppins(
                color: const Color(0x00F6F7FC),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            Text(
              'Email',
              style: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _emailController,
              // validator: (email) {
              //   if (email != null && !EmailValidator.validate(email)) {
              //     return "Email a valid email";
              //   } else {
              //     return null;
              //   }
              // },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(20, 20, 20, 20),
                  ),
                ),
                hintText: 'Masukan email terdaftar',
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                ),
              ),
            ),
            const SizedBox(
              height: 39,
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
                      'Lanjutkan',
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
      ),
    );
  }
}
