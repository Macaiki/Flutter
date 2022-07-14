import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/comment/comment_page.dart';
import 'package:flutter_macaiki/provider/get_threads_provider.dart';
import 'package:flutter_macaiki/provider/up_vote_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    final getThread = Provider.of<GetThreadsProvider>(
      context,
    );
    final upVote = Provider.of<UpVoteProvider>(context);
    return ListView.builder(
      itemCount: getThread.getThreads!.data!.length,
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff262626),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 17,
                left: 8,
                right: 8,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (getThread.getThreads != null)
                        Image.network(
                          getThread
                              .getThreads!.data![index].userProfilePictureURL!,
                          width: 33,
                          height: 33,
                        ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    if (getThread.getThreads != null)
                                      Text(
                                        getThread
                                            .getThreads!.data![index].userName!,
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xffF6F7FC),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/icons/dot.png',
                                      width: 4,
                                      height: 18,
                                      color: const Color(0xffF6F7FC),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isPressed = !isPressed;
                                        });
                                        print(isPressed);
                                      },
                                      child: isPressed
                                          ? Text(
                                              'Following',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xffA5A5A5),
                                              ),
                                            )
                                          : Text(
                                              'Follow',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.blue,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Musisi',
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xffA5A5A5),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/icons/dot.png',
                                      width: 4,
                                      height: 18,
                                      color: const Color(0xffA5A5A5),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '2 days ago',
                                      style: GoogleFonts.poppins(
                                        color: const Color(0xffA5A5A5),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: const Color(0xff181818),
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          leading: Image.asset(
                                            'assets/icons/Megaphone.png',
                                            width: 32,
                                            height: 32,
                                          ),
                                          title: Text(
                                            'Laporkan',
                                            style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xffF52936),
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          leading: Image.asset(
                                            'assets/icons/Flag.png',
                                            width: 32,
                                            height: 32,
                                          ),
                                          title: Text(
                                            'Blokir Thread',
                                            style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xffF6F7FC),
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Image.asset(
                                'assets/icons/Option_Button.png',
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (getThread.getThreads != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getThread.getThreads!.data![index].title!,
                          style: GoogleFonts.poppins(
                            color: const Color(0xffF6F5FC),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 5,
                  ),
                  if (getThread.getThreads != null)
                    ReadMoreText(
                      getThread.getThreads!.data![index].body!,
                      trimLines: 3,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read Less',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/image_thred.png',
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff262626),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          border: Border.all(
                            color: const Color(0xff464646),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // upVote.upVote(
                                  //   getThread.getThreads!.data![index].iD!,
                                  //   context,
                                  // );
                                },
                                child: Image.asset(
                                  'assets/icons/arrow-up.png',
                                  width: 13,
                                  height: 13,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '102 K',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffF6F7FC),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff262626),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          border: Border.all(
                            color: const Color(0xff464646),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/arrow-down.png',
                            width: 13,
                            height: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'assets/icons/message-circle.png',
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const CommentPage()),
                            ),
                          );
                        },
                        child: Text(
                          'Comment',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffF6F7FC),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: const Color(0xff181818),
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/Link.png',
                                      width: 32,
                                      height: 32,
                                    ),
                                    title: Text(
                                      'Salin Tautan',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF6F7FC),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                      'assets/icons/share.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    title: Text(
                                      'Bagikan ke..',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffF6F7FC),
                                      ),
                                    ),
                                    onTap: () {},
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          'assets/icons/share.png',
                          width: 13,
                          height: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
