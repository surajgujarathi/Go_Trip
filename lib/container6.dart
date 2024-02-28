import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_trip_ui/constant.dart';

class Container6 extends StatefulWidget {
  Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40, left: 20),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: Row(
                        children: [
                          Image.asset('plane.png'),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Our ultimate goal is  inspire and enable memorable\n journeys for everyone, regardless of their destination\n or budget.',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.white, fontSize: w! / 90),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'About us',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Blog',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Carrer',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                ],
              ),
              SizedBox(
                width: w! / 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Support',
                      style: TextStyle(color: Colors.white, fontSize: w! / 90),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Contact us',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'return',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'FAQ',
                    style: TextStyle(color: Colors.grey, fontSize: w! / 90),
                  ),
                ],
              ),
              SizedBox(
                width: w! / 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'GetUpdates',
                      style: TextStyle(color: Colors.white, fontSize: w! / 90),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: w! / 20,
                    width: w! / 4,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Text(
                          'Enter your email',
                          style: TextStyle(
                              fontSize: w! / 90, color: Colors.grey.shade500),
                        ),
                        SizedBox(
                          width: w! / 125,
                        ),
                        Container(
                          height: 40,
                          width: w! / 7,
                          color: Colors.amber,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Subscribe',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 244, 243, 243),
                                    fontSize: w! / 90),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 40, width: 60, child: Image.asset('fb.png')),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 40,
                          width: 60,
                          child: Image.asset('twitter.png')),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 40, width: 60, child: Image.asset('its.png'))
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 200),
            child: Row(
              children: [
                const Text(
                  '© 2024 GoTrip. All right reserved',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(width: w! / 2.8),
                Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: w! / 90, color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Terms of Services',
                  style: TextStyle(fontSize: w! / 90, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
