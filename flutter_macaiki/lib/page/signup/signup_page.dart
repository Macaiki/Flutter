import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
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
            //Text login dulu yuk...
            SizedBox(
              height: 5,
            ),
            Text(
              'Yuk jadi bagian dari Macaiki dengan mendaftarkan akun terlebih dahulu.',
              style: GoogleFonts.poppins(
                color: const Color(0x00f6f7fc),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 25,
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
            //Username
            Text(
              'Username',
              style: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(20, 20, 20, 20),
                  ),
                ),
                hintText: 'Buat username Macaiki kamu',
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
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
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
              obscureText: true,
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
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: Color(0x00f6f7fc),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            //Konfirmasi Paswaord
            Text(
              'Konfirmasi Password',
              style: GoogleFonts.poppins(
                color: const Color(0x00f6f7fc),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
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
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(20, 20, 20, 20),
                  ),
                ),
                hintText: 'Masukan password',
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0x00f6f7fc),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Text Dengan klik...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dengan klik SIGN UP, kamu telah menyetujui ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00BC6FF1),
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Syarat dan Ketentuan ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00BC6FF1),
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'serta ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00BC6FF1),
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'Kebijakan Privasi ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00BC6FF1),
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                Text(
                  'MACAIKI ',
                  style: GoogleFonts.poppins(
                    color: const Color(0x00BC6FF1),
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Bottom Sign Up
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
                      'SIGN UP',
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
              height: 46,
            ),
            //Text sudah punya...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun ',
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
                    'Masuk',
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
