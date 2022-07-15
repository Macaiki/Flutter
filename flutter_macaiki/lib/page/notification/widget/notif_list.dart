import 'package:flutter/material.dart';
import 'package:flutter_macaiki/model/notif_model.dart';
import 'package:flutter_macaiki/page/notification/widget/notif_card.dart';

class NotifList extends StatelessWidget {
  const NotifList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotifCard(
          NotifModel(
            id: 1,
            imageUrl: 'assets/images/pic.png',
            title: 'Zen posted a new thread',
            body:
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam',
            date: 'Just Now',
            isActive: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        NotifCard(
          NotifModel(
            id: 2,
            imageUrl: 'assets/images/pic1.png',
            title: 'Gaga commented on your post',
            body:
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam',
            date: 'Just Now',
            isActive: true,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        NotifCard(
          NotifModel(
            id: 3,
            imageUrl: 'assets/images/Ellipse.png',
            title: 'Lia started following you',
            body: '',
            date: '1 hour ago',
            isActive: false,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        NotifCard(
          NotifModel(
            id: 4,
            imageUrl: 'assets/images/profile_picture.png',
            title: 'Nat liked your comment',
            body:
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit ut aliquam',
            date: '5 hour',
            isActive: false,
          ),
        ),
      ],
    );
  }
}
