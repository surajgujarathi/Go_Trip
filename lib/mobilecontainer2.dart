import 'package:flutter/material.dart';
import 'package:go_trip_ui/constant.dart';

class MobileContainer2 extends StatelessWidget {
  MobileContainer2({Key? key});

  final List<String> imagePaths = [
    "assets/waterfall.jpg",
    "assets/ss.jpeg",
    "assets/place.png",
    "assets/waterfall.jpg",
  ];

  final List<String> prices = [
    "\$100/d",
    "\$150",
    "\$200",
    "\$250",
  ];

  final List<String> locations = [
    "Los Angeles",
    "Paris",
    "Italy",
    "India",
  ];

  final List<String> additionalTexts = [
    "Serenity Cove Retreat",
    "Paradise Resort",
    "Paradise Resort",
    "Niagara Waterfall",
  ];
  final List<String> additionalTexts1 = [
    "Includes taxes & fees",
    "Includes taxes & fees",
    "Includes taxes & fees",
    "Includes taxes & fees",
  ];

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
              Text(
                "Top-Rated Places Worldwide",
                style:
                    TextStyle(fontSize: w! / 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Explore Trendsetting Villas Across the Globe for Unforgettable Escapes",
                style: TextStyle(fontSize: w! / 28, color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < 4; index++)
                Container(
                  width: w! / 1.5,
                  height: 400,
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
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Reviews $index",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${prices[index]}",
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        additionalTexts1[index],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      // Add your additional text here
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
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
