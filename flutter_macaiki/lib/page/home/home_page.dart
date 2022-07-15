import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/home/widget/community.dart';
import 'package:flutter_macaiki/page/home/widget/for_you.dart';
import 'package:flutter_macaiki/page/home/widget/trending.dart';
import 'package:flutter_macaiki/page/home/writethread_page.dart';
import 'package:flutter_macaiki/page/notification/notification_page.dart';
import 'package:flutter_macaiki/page/profile/profile_page.dart';
import 'package:flutter_macaiki/page/search/search_page.dart';
import 'package:flutter_macaiki/page/trending/trending_page.dart';
import 'package:flutter_macaiki/provider/get_threads_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<GetThreadsProvider>(context, listen: false).getAllThreads();
    });
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      index = _tabController.index;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final getThread = Provider.of<GetThreadsProvider>(
      context,
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: const Color(0xff262626),
                automaticallyImplyLeading: false,
                title: Image.asset(
                  'assets/images/Macaiki_images.png',
                  height: 43,
                  width: 92,
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchPage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.search,
                        size: 26.0,
                      ),
                    ),
                  ),
                ],
                bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xffBC6FF1),
                  labelColor: const Color(0xffBC6FF1),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text(
                        'For You',
                        style: GoogleFonts.poppins(
                          color: index == 0
                              ? const Color(0xffBC6FF1)
                              : const Color(0xffF6F7FC),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Trending',
                        style: GoogleFonts.poppins(
                          color: index == 1
                              ? const Color(0xffBC6FF1)
                              : const Color(0xffF6F7FC),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Community',
                        style: GoogleFonts.poppins(
                          color: index == 2
                              ? const Color(0xffBC6FF1)
                              : const Color(0xffF6F7FC),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              getThread.getThreads != null
                  ? const ForYou()
                  : const Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        color: Color(0xffBC6FF1),
                      ),
                    ),
              const Trending(),
              const Community(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffBC6FF1),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WriteThreadPage(),
              ),
            ).then(
              (value) => {
                Provider.of<GetThreadsProvider>(context).getAllThreads(),
              },
            );
          },
          child: Image.asset(
            'assets/icons/Write.png',
            width: 35,
            height: 35,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  top: 13,
                  bottom: 3.75,
                ),
                child: Image.asset(
                  'assets/icons/homeOn.png',
                  width: 22.5,
                  height: 23.11,
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrendingPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/icons/Community.png',
                    width: 22.5,
                    height: 23.11,
                  ),
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
                          builder: (context) => const NotificationPage()),
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const ProfilePage()),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/icons/User.png',
                    width: 22.5,
                    height: 23.11,
                  ),
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
