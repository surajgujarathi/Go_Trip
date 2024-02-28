import 'package:flutter/material.dart';

import 'package:go_trip_ui/constant.dart';

// import 'package:go_trip_ui/container2.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 700,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "ss.jpeg",
                      ),
                      fit: BoxFit.fill),
                  color: Colors.amber,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('flight.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "GoTrip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w! / 48,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Hotel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "flight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Train",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Travel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "car rental",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 48,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          width: w! / 40,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  // Implement search functionality here
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Sign up"))
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Tailored Travel,\nCompared For You",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1,
                        color: Colors.white,
                        fontSize: w! / 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Instant find the best deals on flights,hotel,and vacation packages.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: w! / 58,
                    ),
                  ),
                  Text(
                    "start planning your dreams gatewat today!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: w! / 58,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 60,
                      width: w! / 1.4,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            smallcontainer(
                              Icons.location_on_outlined,
                              Icons.keyboard_arrow_down_rounded,
                              'Where to go',
                            ),
                            smallcontainer(
                              Icons.calendar_month,
                              Icons.keyboard_arrow_down_rounded,
                              'Check in - Check out',
                            ),
                            smallcontainer(
                              Icons.location_on_outlined,
                              Icons.keyboard_arrow_down_rounded,
                              'Where to go',
                            ),
                            Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2)),
                              child: const Center(
                                child: Text(
                                  'SEARCH',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget smallcontainer(IconData icon1, icon2, String s1) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 50,
      width: w! / 5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Row(
              children: [
                Icon(icon1),
                const SizedBox(width: 3),
                Container(
                  // color: Colors.red,
                  height: 50,
                  width: w! / 7,
                  child: TextField(
                    decoration:
                        InputDecoration(hintText: s1, border: InputBorder.none),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(icon2)
          ],
        ),
      ),
    );
  }
}
