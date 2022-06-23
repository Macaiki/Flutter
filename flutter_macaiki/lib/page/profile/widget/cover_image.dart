import 'package:flutter/material.dart';

Widget coverImage() {
  return Stack(
    children: [
      Container(
        height: 144,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Frame.png'),
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
      )
    ],
  );
}
