import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/followers_model.dart';
import 'package:flutter_macaiki/page/followers/widget/followers_card.dart';

class FollowersList extends StatelessWidget {
  const FollowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FollowersCard(
          key,
          FollowersModel(
            id: 1,
            imageUrl: 'assets/images/pic.png',
            name: 'Victor',
            email: '@Victor_bro',
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        FollowersCard(
          key,
          FollowersModel(
            id: 2,
            imageUrl: 'assets/images/pic1.png',
            name: 'Szaz',
            email: '@Szaz_mniz',
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        FollowersCard(
          key,
          FollowersModel(
            id: 3,
            imageUrl: 'assets/images/profile_picture.png',
            name: 'AbahSkuy',
            email: '@Abah_Skuy',
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        FollowersCard(
          key,
          FollowersModel(
            id: 4,
            imageUrl: 'assets/images/Ellipse.png',
            name: 'Lisa',
            email: '@Lisa_blekping',
          ),
        ),
      ],
    );
  }
}
