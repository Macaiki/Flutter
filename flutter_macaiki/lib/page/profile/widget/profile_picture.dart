import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_macaiki/page/edit_profile/edit_profile.dart';
import 'package:flutter_macaiki/page/followers/followers_page.dart';
import 'package:flutter_macaiki/provider/get_user_provider.dart';
import 'package:flutter_macaiki/provider/update_user_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemp = File(image.path);
    setState(() {
      this.image = imageTemp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final getUserProvider = Provider.of<GetUserProvider>(context);
    final updateUser = Provider.of<UpdateUserProvider>(context);
    return Container(
      transform: Matrix4.translationValues(0.0, -40.0, 0.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                            leading: const Icon(
                              Icons.camera,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Camera',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.image,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Gallery',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffF6F7FC),
                              ),
                            ),
                            onTap: getImage,
                          )
                        ],
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  child: CircleAvatar(
                    radius: 43,
                    backgroundImage: image == null
                        ? const AssetImage('assets/images/Ellipse.png')
                        : FileImage(image!) as ImageProvider,
                  ),
                ),
              ),
              Container(
                width: 99,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xff181818),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: const Color(0xffBC6FF1),
                  ),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const EditProfile()),
                        ),
                      );
                    },
                    child: Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffC787F3),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              if (getUserProvider.getUser != null)
                Text(
                  (updateUser.updateUserModel != null)
                      ? updateUser.updateUserModel!.data!.name!
                      : getUserProvider.getUser!.data!.name!,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              const SizedBox(
                width: 7,
              ),
              Text(
                (updateUser.updateUserModel != null)
                    ? updateUser.updateUserModel!.data!.profession!
                    : 'Musisi',
                style: GoogleFonts.poppins(
                  color: const Color(0xffA5A5A5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            '@admin',
            style: GoogleFonts.poppins(
              color: const Color(0xffA5A5A5),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            (updateUser.updateUserModel != null)
                ? updateUser.updateUserModel!.data!.bio!
                : 'Nothing',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Post',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '16',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffF6F7FC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const FollowersPage()),
                        ),
                      );
                    },
                    child: Text(
                      'Followers',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (getUserProvider.getUser != null)
                    Text(
                      getUserProvider.getUser!.data!.totalFollower!.toString(),
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const FollowersPage()),
                        ),
                      );
                    },
                    child: Text(
                      'Following',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (getUserProvider.getUser != null)
                    Text(
                      getUserProvider.getUser!.data!.totalFollowing!.toString(),
                      style: GoogleFonts.poppins(
                        color: const Color(0xffF6F7FC),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
