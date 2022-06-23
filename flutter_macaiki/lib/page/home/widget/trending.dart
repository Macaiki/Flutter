import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          Container(
            width: 330,
            height: 425,
            decoration: BoxDecoration(
              color: const Color(0xff262626),
              borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
    );
  }
}
