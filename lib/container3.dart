import 'package:flutter/material.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text(
          "Exclusive deals just for you !",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('place.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 40,
                            width: 60,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('per.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 140,
                          ),
                          Container(
                            height: 40,
                            width: 250,
                            margin: const EdgeInsets.all(11),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 43, 43, 43)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'Valid only on 2 Jan-9 Jan 2024',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Exclusive Flight Deals\njust for you!',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '50%',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '*with Terms and Condition',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('place.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: 40,
                            width: 60,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('per.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 140,
                          ),
                          Container(
                            height: 40,
                            width: 250,
                            margin: const EdgeInsets.all(11),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 43, 43, 43)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                'Valid only on 2 Jan-9 Jan 2024',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Exclusive Flight Deals\njust for you!',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '50%',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '*with Terms and Condition',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
