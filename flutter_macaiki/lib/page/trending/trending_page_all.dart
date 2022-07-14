import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/detail_community/detail_community.dart';
import 'package:flutter_macaiki/page/trending/widget/navbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingPageAll extends StatefulWidget {
  const TrendingPageAll({Key? key}) : super(key: key);

  @override
  State<TrendingPageAll> createState() => _TrendingPageAllState();
}

class _TrendingPageAllState extends State<TrendingPageAll> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Group6.png',
                width: double.infinity,
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 30,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icons/Left.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailCommunity(),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xff262626),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Frame63.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  'assets/images/Ellipse5.png',
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'DIY & Home',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xffBc6FF1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie nibh viverra sapi..',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xffA5A5A5),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isButtonPressed = !isButtonPressed;
                                  });
                                  print(isButtonPressed);
                                },
                                child: isButtonPressed
                                    ? Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfFA5A5A5),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Following',
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xffF6F7FC),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfFBC6FF1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Follow',
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xffF6F7FC),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xff262626),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Frame.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                'assets/images/Ellipse.png',
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Design Graphic',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffBc6FF1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie nibh viverra sapi..',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffA5A5A5),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xfFBC6FF1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Follow',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xffF6F7FC),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
