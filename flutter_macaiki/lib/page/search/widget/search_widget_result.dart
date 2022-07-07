import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/search/search_page.dart';
import 'package:flutter_macaiki/page/search/search_result.dart';
import 'package:google_fonts/google_fonts.dart';

Widget searchWidgetResult(BuildContext context) {
  return Row(
    children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
        },
        child: Image.asset(
          'assets/icons/Left.png',
          width: 32,
          height: 32,
        ),
      ),
      const SizedBox(
        width: 19,
      ),
      Flexible(
        child: SizedBox(
          width: 291,
          height: 40,
          child: TextFormField(
            cursorColor: Colors.white,
            style: GoogleFonts.poppins(
              color: const Color(0xffF6F7FC),
              fontSize: 12,
            ),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 15,
                  right: 15,
                ),
                fillColor: const Color(0xff262626),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffF6F7FC),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffBC6FF1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Design',
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0xffA5A5A5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchResult(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.search,
                    color: Color(0xffFFFFFF),
                  ),
                )),
          ),
        ),
      ),
    ],
  );
}
