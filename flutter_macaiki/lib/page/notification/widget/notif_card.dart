import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/notif_model.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifCard extends StatelessWidget {
  final NotifModel notif;
  const NotifCard(this.notif, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          notif.imageUrl,
          width: 40,
          height: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notif.title,
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              notif.body,
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              notif.date,
              style: GoogleFonts.poppins(
                color: const Color(0xffF6F7FC),
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        notif.isActive
            ? const Icon(
                Icons.circle,
                color: Color(0xffBC6FF1),
                size: 8,
              )
            : Container(),
      ],
    );
  }
}
