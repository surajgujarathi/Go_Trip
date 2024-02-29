import 'package:flutter/material.dart';

class MobilePng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
              child: Image.asset(
            "assets/logo.png",
            height: 100,
            width: 1400,
          )),
        ],
      ),
    );
  }
}
