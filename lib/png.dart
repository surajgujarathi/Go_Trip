import 'package:flutter/material.dart';

class Png extends StatelessWidget {
  const Png({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
                "logo.png"), // Make sure to adjust the path if needed
          ),
        ],
      ),
    );
  }
}
