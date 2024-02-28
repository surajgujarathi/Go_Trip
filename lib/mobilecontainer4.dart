import 'package:flutter/material.dart';
import 'package:go_trip_ui/constant.dart';

class MobileContainer4 extends StatelessWidget {
  MobileContainer4({Key? key});

  final List<String> imagePaths = [
    "assets/food1.png",
    "assets/food2.png",
    "assets/food3.png",
    "assets/food4.png",
    "assets/food3.png",
    "assets/food4.png",
  ];

  final List<String> locations = [
    "Los Angeles",
    "Paris",
    "Italy",
    "India",
  ];

  final List<String> additionalTexts = [
    "jakarta Food Corner",
    "Sushi Synphony Soiree",
    "Egg Trailblazers Tour",
    "King Dessert",
  ];

  // Example list of ratings
  final List<double> ratings = [4.5, 4.2, 4.8, 4.4];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Try the worlds Best\nExperiences",
                style:
                    TextStyle(fontSize: w! / 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Explore the most activities globally for an unforgettable experience",
                style: TextStyle(fontSize: w! / 28, color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < 4; index++)
                Container(
                  width: w! / 1.8,
                  height: 350,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          additionalTexts[index],
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              size: 16, color: Colors.grey),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            locations[index],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 16, color: Colors.grey),
                          const SizedBox(width: 5),
                          Text(
                            "Reviews ${ratings[index]}",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        Center(
          child: Container(
            color: Colors.redAccent,
            height: 45,
            width: w! / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "See all",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_right_alt_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
