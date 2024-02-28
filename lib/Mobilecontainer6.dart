import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class MobileContainer6 extends StatefulWidget {
  const MobileContainer6({super.key});

  @override
  State<MobileContainer6> createState() => _MobileContainer6State();
}

class _MobileContainer6State extends State<MobileContainer6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Image.asset(
            "assets/plane.png",
            height: 70,
            width: 100,
          )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Our ultimate goal is to inspire and enable \nmemorable journeys for everyone, regardless of\n their destination or budget.",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "About us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Career",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Support",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Contact  us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Return",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "FAQ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Get Updates',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                        // width: 2000,
                        // height: 200,
                        // color: Colors.green.withOpacity(0.5),
                        child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                        border: InputBorder.none,
                      ),
                    )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          'Subscribe',
                          //style: TextStyle(fontSize: w! / 80),
                        ))),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.white, fontSize: w! / 50),
              ),
              SizedBox(width: w! / 30),
              Text(
                'Terms of service',
                style: TextStyle(color: Colors.white, fontSize: w! / 50),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                width: w! / 10,
                height: w! / 10,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/its.png'))),
              ),
              SizedBox(width: w! / 20),
              //Spacer(flex: 1,),
              Container(
                width: w! / 10,
                height: w! / 10,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/twitter.png'))),
              ),
              //const Spacer(flex: 1,),
              SizedBox(width: w! / 20),
              Container(
                width: w! / 10,
                height: w! / 10,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/fb.png'))),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Contact Suraj Any Queries",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
