import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/followers/widget/followers.dart';
import 'package:flutter_macaiki/page/following/following_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowersPage extends StatefulWidget {
  const FollowersPage({Key? key}) : super(key: key);

  @override
  State<FollowersPage> createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      index = _tabController.index;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: Color(0xff181818),
                bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xffBC6FF1),
                  labelColor: const Color(0xffBC6FF1),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text(
                        'Followers',
                        style: GoogleFonts.poppins(
                          color: index == 0
                              ? const Color(0xffBC6FF1)
                              : const Color(0xffF6F7FC),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Following',
                        style: GoogleFonts.poppins(
                          color: index == 1
                              ? const Color(0xffBC6FF1)
                              : const Color(0xffF6F7FC),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
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
            children: const [
              Followers(),
              FollowingPage(),
            ],
          ),
        ),
      ),
    );
  }
}
