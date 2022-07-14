import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/login/login_page.dart';
import 'package:flutter_macaiki/provider/auth_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  final _confrimePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 18,
            ),
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
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Yuk jadi bagian dari Macaiki dengan mendaftarkan akun terlebih dahulu.',
                  style: GoogleFonts.poppins(
                    color: const Color(0xfff6f7fc),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Email
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
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
                    hintText: 'Masukan email kamu',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                //Username
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
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
                  controller: _usernameController,
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
                    hintText: 'Buat username macaiki kamu',
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Re-Enter  New Password';
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
                  height: 14,
                ),
                //Konfirmasi Paswaord
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Konfirmasi Password',
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
                  controller: _confrimePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Re-Enter Password';
                    } else if (_passwordController.text !=
                        _confrimePassword.text) {
                      return 'Not Match';
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
                    hintText: 'Konfirmasi Password',
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
                  height: 25,
                ),
                Column(
                  children: [
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Dengan klik SIGN UP, kamu telah menyetujui',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7FC),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Syarat dan Ketentuan',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffBC6FF1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'serta',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffF6F7FC),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Kebijakan Privasi',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffBC6FF1),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'MACAIKI!',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffF6F7FC),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //Bottom Sign Up
                InkWell(
                  onTap: () {
                    _onLoading();
                    userProvider.register(
                      _usernameController.text,
                      _emailController.text,
                      _passwordController.text,
                      _confrimePassword.text,
                      context,
                    );
                  },
                  child: Container(
                    width: 380,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffBC6FF1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        'SIGN UP',
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
                  height: 46,
                ),
                //Text sudah punya...
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun ',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFffffff),
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          color: Color(0xFFBC6FF1),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.grey,
            color: Color(0xffBC6FF1),
          ),
        );
      },
    );
  }
}
