import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword2 extends StatefulWidget {
  ForgetPassword2({Key? key}) : super(key: key);

  @override
  State<ForgetPassword2> createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
  final _passwordController = TextEditingController();
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
              'Masukan password',
              style: GoogleFonts.poppins(
                color: const Color(0x00F6F7FC),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Password',
              style: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value != null && value.length < 5) {
                  return 'Enter min. 5 characters';
                } else {
                  return null;
                }
              },
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
              height: 57,
            ),
            TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Re-Enter  New Password';
                } else if (value != _passwordController) {
                  return 'Not Match';
                } else {
                  return null;
                }
              },
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
              height: 57,
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
                      'Confirm',
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
