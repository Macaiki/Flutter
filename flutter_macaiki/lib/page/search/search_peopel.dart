import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/search/search_community.dart';
import 'package:flutter_macaiki/page/search/search_result.dart';
import 'package:flutter_macaiki/page/search/widget/search_widget_result.dart';
import 'package:flutter_macaiki/provider/get_all_user_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchPeopel extends StatefulWidget {
  const SearchPeopel({Key? key}) : super(key: key);

  @override
  State<SearchPeopel> createState() => _SearchPeopelState();
}

class _SearchPeopelState extends State<SearchPeopel> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) {
        Provider.of<GetAllUserProvider>(context, listen: false).getAllUser();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final getUser = Provider.of<GetAllUserProvider>(context);
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
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffBc6FF1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Peopel',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffF6F7FC),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
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
                          builder: (context) => const SearchCommunity(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xff181818),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xffBC6FF1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Community',
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
                  Container(
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
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Peopel',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffF6F7FC),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 9,
                left: 20,
                right: 20,
              ),
              child: ListView.builder(
                  itemCount: getUser.getAllUserModel!.data!.length,
                  itemBuilder: (BuildContext context, index) {
                    return Row(
                      children: [
                        if (getUser.getAllUserModel != null)
                          Image.network(
                            getUser
                                .getAllUserModel!.data![index].profileImageURL!,
                            width: 52,
                            height: 52,
                          ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (getUser.getAllUserModel != null)
                              Text(
                                getUser.getAllUserModel!.data![index].name!,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xffF6F7FC),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            if (getUser.getAllUserModel != null)
                              Text(
                                getUser.getAllUserModel!.data![index].username!,
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
                              color: const Color(0xffF6F7FC),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Following',
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
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
