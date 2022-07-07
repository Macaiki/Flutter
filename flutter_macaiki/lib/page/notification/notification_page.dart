import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/notification/widget/navbar.dart';
import 'package:flutter_macaiki/page/notification/widget/notif_list.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff181818),
        centerTitle: true,
        title: Text(
          'Notifications',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 28,
        ),
        child: ListView(
          children: const [
            NotifList(),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
