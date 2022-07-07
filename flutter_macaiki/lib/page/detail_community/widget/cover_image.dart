import 'package:flutter/material.dart';

Widget coverImage(BuildContext context) {
  return Stack(
    children: [
      Container(
        height: 144,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Frame63.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          right: 15,
          top: 10,
        ),
        child: Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/icons/option.png',
            width: 24,
            height: 24,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/Left.png',
              width: 32,
              height: 32,
            ),
          ),
        ),
      )
    ],
  );
}
