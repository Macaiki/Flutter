import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/followers_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersCard extends StatelessWidget {
  final FollowersModel followers;
  const FollowersCard(
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
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            color: const Color(0xffF52936),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Remove',
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
