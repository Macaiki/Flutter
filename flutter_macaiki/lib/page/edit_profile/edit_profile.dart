import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final proffesionController = TextEditingController();
  final bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff181818),
        title: Text(
          'Edit Profile',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 12.5,
              top: 12,
              bottom: 17,
            ),
            child: InkWell(
              onTap: () async{
                
              },
              child: Container(
                width: 74,
                decoration: BoxDecoration(
                  color: const Color(0xffBC6FF1),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 144,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Frame.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3.0,
                      sigmaY: 3.0,
                    ),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 55.88,
                    left: 171.75,
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/icons/Write.png',
                    ),
                    backgroundColor: Color(0xffBC6FF1),
                  ),
                ),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: const [
                          CircleAvatar(
                            radius: 43,
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse.png',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 21,
                              left: 25,
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(
                                'assets/icons/Write.png',
                              ),
                              backgroundColor: Color(0xffBC6FF1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                ),
                Text(
                  'Name',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                controller: nameController,
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F7FC),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffBC6FF1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color(0xff181818),
                  filled: true,
                  hintText: 'Name',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC).withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                ),
                Text(
                  'Profession',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                controller: proffesionController,
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F7FC),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffBC6FF1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color(0xff181818),
                  filled: true,
                  hintText: 'Profession',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC).withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                ),
                Text(
                  'Bio',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TextFormField(
                controller: bioController,
                maxLines: 5,
                style: GoogleFonts.poppins(
                  color: const Color(0xffF6F7FC),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffBC6FF1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color(0xff181818),
                  filled: true,
                  hintText: 'Bio',
                  hintStyle: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC).withOpacity(0.5),
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
