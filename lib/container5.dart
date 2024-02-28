import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constant.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: w! / 2,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: w! / 4,
                    width: w! / 2.1,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage("boat.jpeg"), fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/globe.png'))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Explore more to get out of your \ncomfort zone',
                          style:
                              TextStyle(color: Colors.white, fontSize: w! / 50),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Book your perfect stay with us.",
                          style:
                              TextStyle(color: Colors.white, fontSize: w! / 60),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Book a trip now",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: w! / 4,
                    width: w! / 2.1,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("friends.jpeg"), fit: BoxFit.fill),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: w! / 6,
                      ),
                      Text(
                        "Destinations avaliable",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w! / 60,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1,242,",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w! / 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Container(
                height: w! / 1,
                width: w! / 2,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage("beach.jpeg"), fit: BoxFit.fill)),
              ),
              Container(
                height: w! / 1,
                width: w! / 2,
                child: Center(
                  child: Text(
                    "Beyond acommodation, creating \nmemories of a lifetime",
                    style: TextStyle(color: Colors.white, fontSize: w! / 47),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
