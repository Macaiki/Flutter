import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/followers_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowingCard extends StatelessWidget {
  final FollowersModel followers;
  const FollowingCard(
    Key? key,
    this.followers,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          followers.imageUrl,
          width: 52,
          height: 52,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              followers.name,
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              followers.email,
              style: GoogleFonts.poppins(
                color: const Color(0xffA5A5A5),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0xff181818),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xff464646),
            ),
          ),
          child: Center(
            child: Text(
              'Following',
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7Fc),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
