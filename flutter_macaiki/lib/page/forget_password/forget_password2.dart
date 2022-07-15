import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/forget_password/forget_password3.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({Key? key}) : super(key: key);

  @override
  State<ForgetPassword2> createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password reset',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffBC6FF1),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                'Masukan email kamu, kami akan mengirimkan link untuk mengganti password mu.',
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F7FC),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 46,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'New Password',
                    style: GoogleFonts.poppins(
                      color: const Color(0xfff6f7fc),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _passwordController,
                // validator: (email) {
                //   if (email != null && !EmailValidator.validate(email)) {
                //     return "Email a valid email";
                //   } else {
                //     return null;
                //   }
                // },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffF6F7FC),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color(0xff262626),
                  filled: true,
                  hintText: 'Your New Password',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC).withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Confrim New Password',
                    style: GoogleFonts.poppins(
                      color: const Color(0xfff6f7fc),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: _passwordController,
                // validator: (email) {
                //   if (email != null && !EmailValidator.validate(email)) {
                //     return "Email a valid email";
                //   } else {
                //     return null;
                //   }
                // },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffF6F7FC),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color(0xff262626),
                  filled: true,
                  hintText: 'Confrim Password',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC).withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 39,
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
                        builder: ((context) => const ForgetPasword3()),
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
      ),
    );
  }
}
