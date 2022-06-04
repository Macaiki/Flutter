// import 'package:email_validator/email_validator.dart' show EmailValidator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(20, 20, 20, 20),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            //Gambar Bulan
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/login_images.png',
                  height: 138,
                  width: 188,
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            //Text Macaiki
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Macaiki_images.png',
                  height: 60,
                  width: 128,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            //Text login dulu yuk...
            Text(
              'Login dulu yuk, agar bisa menikmati fitur-fitur Macaiki dengan nyaman.',
              style: GoogleFonts.poppins(
                color: const Color(0x00f6f7fc),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            //Email
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
              height: 14,
            ),
            //Passward
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
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(20, 20, 20, 20),
                  ),
                ),
                hintText: 'Lupa Password?',
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                ),
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: Color(0x00f6f7fc),
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            //Text lupa pasword
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Lupa Password?',
                    style: GoogleFonts.poppins(
                      color: const Color(0x00BC6FF1),
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Bottom login
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
            const SizedBox(
              height: 164,
            ),
            //Text belum punya...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun? ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00ffffff),
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: Color(0x00BC6FF1),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
