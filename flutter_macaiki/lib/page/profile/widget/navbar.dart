import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/notification/notification_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/home_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff262626),
      selectedItemColor: const Color(0xffBC6FF1),
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: GoogleFonts.poppins(
        color: const Color(0xffBC6FF1),
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      currentIndex: 3,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 3.75,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const HomePage()),
                  ),
                );
              },
              child: Image.asset(
                'assets/icons/HomeOff.png',
                width: 22.5,
                height: 23.11,
              ),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 3.75,
            ),
            child: Image.asset(
              'assets/icons/Community.png',
              width: 22.5,
              height: 23.11,
            ),
          ),
          label: 'Trending',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 3.75,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/icons/Notification.png',
                width: 22.5,
                height: 23.11,
              ),
            ),
          ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 3.75,
            ),
            child: Image.asset(
              'assets/icons/UserOn.png',
              width: 22.5,
              height: 23.11,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
