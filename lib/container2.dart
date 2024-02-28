import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  Container2({Key? key});

  // Define a list of image paths

  final List<String> imagePaths = [
    "waterfall.jpg",
    "waterfall.jpg",
    "waterfall.jpg",
    "waterfall.jpg",
  ];

  // Define a list of prices
  final List<String> prices = [
    "\$100/d",
    "\$150",
    "\$200",
    "\$250",
  ];

  // Define a list of locations
  final List<String> locations = [
    "Los angels",
    "paris",
    "Italy",
    "India",
  ];

  // Define a list of additional texts
  final List<String> additionalTexts = [
    "Serenity Cove Retreat",
    "Paradise Resort",
    "Paradise Resort",
    "Niagara waterfall",
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
        const SizedBox(height: 10),
        const Text(
          "Top-Rated Places Worldwide",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Explore Trendsetting Villas Across the Globe for Unforgettable Escapes",
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
        SizedBox(
          height: 300, // Adjust the height of each card
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4, // Number of cards
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 300,
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
                          imagePaths[
                              index], // Use dynamic image path based on index
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 120,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        additionalTexts[
                            index], // Use dynamic additional text based on index
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
                          locations[
                              index], // Use dynamic location based on index
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
                      "${prices[index]}", // Use dynamic price based on index
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      additionalTexts1[
                          index], // Use dynamic additional text based on index
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
