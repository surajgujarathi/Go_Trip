import 'package:flutter/material.dart';

class MobilePng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset("assets/logo.png"),
        ],
      ),
    );
  }
}
