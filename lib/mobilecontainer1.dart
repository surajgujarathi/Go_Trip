import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ss.jpeg"),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.blue,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.flight_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            "GoTrip",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w / 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Tailored Travel,\nCompared For You",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1,
                        color: Colors.white,
                        fontSize: w / 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Instant find the best deals on flights,hotel and\n vacation packages.start planning your dreams\n                           gatewat today!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: w / 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 225,
                      width: w / 1,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          children: [
                            smallContainer(
                              Icons.location_on_outlined,
                              CupertinoIcons.chevron_down,
                              'Where to go?',
                              w,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            smallContainer(
                              Icons.calendar_view_day_outlined,
                              CupertinoIcons.chevron_down,
                              'check-in-Check-out',
                              w,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            smallContainer(
                              Icons.person,
                              CupertinoIcons.chevron_down,
                              '2 guests.1room',
                              w,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              height: 50,
                              width: w / 1.2,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Center(
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget smallContainer(
    IconData icon1,
    IconData icon2,
    String s1,
    double w,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 50,
      width: w / 1.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Row(
              children: [
                Icon(icon1),
                const SizedBox(width: 3),
                Container(
                  height: 50,
                  width: w / 2,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: s1,
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Icon(icon2),
          ],
        ),
      ),
    );
  }
}
