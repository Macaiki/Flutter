import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/trending/trending_page_all.dart';
import 'package:flutter_macaiki/page/trending/widget/navbar_widget.dart';
import 'package:flutter_macaiki/page/trending/widget/search.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
            ),
            child: search(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/Group5.png',
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 13,
                    left: 27,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/No3.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Text(
                            'KKN Desa Dance',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        indent: 53,
                        endIndent: 52,
                        color: Color(0xff464646),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/No1.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Dino Suwu',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        indent: 53,
                        endIndent: 52,
                        color: Color(0xff464646),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/No2.png',
                            width: 27,
                            height: 27,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Text(
                            'Cara Bernafas',
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF6F7FC),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TrendingPageAll(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Group6.png',
                  width: double.infinity,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xff262626)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 9,
                    left: 18,
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrendingPageAll(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/pic.png',
                              width: 22,
                              height: 22,
                            ),
                            const SizedBox(width: 13),
                            Text(
                              'DIY & Home',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffF6F7FC),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 35,
                          right: 15,
                        ),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie nibh viverra sapien maecenas sem dictumst consectetur.',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffA5A5A5),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
