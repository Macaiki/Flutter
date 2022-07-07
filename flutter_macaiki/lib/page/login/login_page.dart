import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/forget_password/forget_password_1.dart';
import 'package:flutter_macaiki/page/signup/signup_page.dart';
import 'package:flutter_macaiki/provider/auth_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    final userProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 18,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
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
                const SizedBox(
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
                const SizedBox(
                  height: 5,
                ),
                //Text login dulu yuk...
                Text(
                  'Login dulu yuk, agar bisa menikmati fitur-fitur Macaiki dengan nyaman.',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                //Email
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
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
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                  ),
                  controller: _emailController,
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
                    hintText: 'Masukan email terdaftar',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                //Passward
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
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
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                  ),
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
                    hintText: 'Masukkan Password',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xffF6F7FC),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                //Text lupa pasword
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword1(),
                          ),
                        );
                      },
                      child: Text(
                        'Lupa Password?',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffBC6FF1),
                          fontWeight: FontWeight.w400,
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
                Container(
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffBC6FF1),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: () {
                      userProvider.login(
                        _emailController.text,
                        _passwordController.text,
                        context,
                      );
                    },
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xffF6F7FC),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //Text belum punya...
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun? ',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        );
                      },
                      child: Text('Daftar',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffBC6FF1),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
