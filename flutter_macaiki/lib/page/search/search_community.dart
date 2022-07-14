import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/search/search_peopel.dart';
import 'package:flutter_macaiki/page/search/search_result.dart';
import 'package:flutter_macaiki/page/search/search_thread.dart';
import 'package:flutter_macaiki/page/search/widget/search_widget_result.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCommunity extends StatelessWidget {
  const SearchCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
              left: 20,
              right: 20,
            ),
            child: searchWidgetResult(context),
          ),
          const Divider(
            height: 22,
            thickness: 1,
            color: Color(0xff262626),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchResult(),
                        ),
                      );
                    },
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff181818),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xffBC6FF1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Filter',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffBC6FF1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchPeopel(),
                        ),
                      );
                    },
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff181818),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xffBC6FF1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Peopel',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffBC6FF1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchResult(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xffBc6FF1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Community',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F7FC),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchThread(),
                        ),
                      );
                    },
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff181818),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xffBC6FF1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Thread',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffBC6FF1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 20,
              right: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Result for "Design"',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Community',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
    );
  }
}
