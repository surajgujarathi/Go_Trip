import 'package:flutter/material.dart';
import 'package:go_trip_ui/constant.dart';

class MobileContainer3 extends StatefulWidget {
  const MobileContainer3({super.key});

  @override
  State<MobileContainer3> createState() => _MobileContainer3State();
}

class _MobileContainer3State extends State<MobileContainer3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Text(
                  'Exclusive deals just for you !',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 375,
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/place.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/per.png'))),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                  height: 20,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.3)),
                                  child: Center(
                                    child: Text(
                                      'Valid only on 2 Jan - 9 Jan 2024',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w! / 40),
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Exclusive Flight Deals just for you !',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '50%',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '*with Terms and Condition',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 18,
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 375,
                      child: Card(
                        shadowColor: Colors.grey,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/place.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/per.png'))),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                  height: 20,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.3)),
                                  child: Center(
                                    child: Text(
                                      'Valid only on 2 Jan - 9 Jan 2024',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: w! / 40),
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Exclusive Flight Deals just for you !',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '50%',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '*with Terms and Condition',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: 250,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See all",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right_alt_rounded))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
