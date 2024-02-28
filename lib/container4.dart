import 'package:flutter/material.dart';
import 'package:go_trip_ui/constant.dart';

class Container4 extends StatelessWidget {
  Container4({Key? key});

  // Define a list of image paths for the first row
  final List<String> firstRowImagePaths = [
    "food1.png",
    "food2.png",
    "food3.png",
    "food4.png",
    "food3.png",
    "food4.png",
  ];

  // Define a list of image paths for the second row
  final List<String> secondRowImagePaths = [
    "food4.png",
    "food3.png",
    "food4.png",
    "food1.png",
    "food2.png",
    "food3.png",
  ];

  // Define a list of locations for the first row
  final List<String> firstRowLocations = [
    "Los angels",
    "paris",
    "Italy",
    "India",
    "Italy",
    "India",
  ];

  // Define a list of locations for the second row
  final List<String> secondRowLocations = [
    "New York",
    "Tokyo",
    "London",
    "Sydney",
    "Dubai",
    "Rio de Janeiro",
  ];

  // Define a list of additional texts
  final List<String> additionalTexts = [
    "jakarta Food Corner",
    "Sushi Synphony Soiree",
    "Egg Trailblazers Tour",
    "King Dessert",
    "Egg Trailblazers Tour",
    "King Dessert",
  ];

  final List<double> ratings = [4.5, 4.2, 4.8, 4.4, 4.4, 4.5];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          "Try the world's Best Experiences",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Explore the most activities globally for an unforgettable experience",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {
                // Handle text button tap
              },
              child: const Text(
                "India",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle text button tap
              },
              child: const Text(
                "Indonesia",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle text button tap
              },
              child: const Text(
                "France",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle text button tap
              },
              child: const Text(
                "japan",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 30,
              width: 130,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(3)),
              child: TextButton(
                onPressed: () {
                  // Handle text button tap
                },
                child: const Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 300, // Adjust the height of each card
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6, // Number of cards
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCard(
                      index,
                      firstRowImagePaths,
                      firstRowLocations,
                      ratings,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 300, // Adjust the height of each card
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6, // Number of cards
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCard(
                      index,
                      secondRowImagePaths,
                      secondRowLocations,
                      ratings,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCard(
    int index,
    List<String> imagePaths,
    List<String> locations,
    List<double> ratings,
  ) {
    return Container(
      width: w! / 4.8,
      height: 400, // Adjust the width of each card
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
                "assets/${imagePaths[index]}",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 170,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Text(
              additionalTexts[index],
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.location_on, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
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
    );
  }
}
