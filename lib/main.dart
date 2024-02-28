import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_trip_ui/Mobilecontainer6.dart';
import 'package:go_trip_ui/Mobilepng.dart';
import 'package:go_trip_ui/constant.dart';
import 'package:go_trip_ui/container1.dart';
import 'package:go_trip_ui/container4.dart';
import 'package:go_trip_ui/container5.dart';
import 'package:go_trip_ui/container6.dart';
import 'package:go_trip_ui/mobilecontainer1.dart';
import 'package:go_trip_ui/mobilecontainer2.dart';
import 'package:go_trip_ui/mobilecontainer3.dart';
import 'package:go_trip_ui/mobilecontainer4.dart';
import 'container2.dart';
import 'container3.dart';
import 'mobilecontainer5.dart';
import 'png.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: AdaptiveLayout(
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig?>{
          Breakpoints.mediumAndUp: SlotLayout.from(
            key: const Key('body'),
            builder: (_) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Container1(),
                    const Png(),
                    Container2(),
                    const Container3(),
                    Container4(),
                    Container5(),
                    Container6(),
                  ],
                ),
              ),
            ),
          ),
          Breakpoints.small: SlotLayout.from(
            key: const Key('body'),
            builder: (_) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MobileContainer1(),
                    MobilePng(),
                    MobileContainer2(),
                    MobileContainer3(),
                    MobileContainer4(),
                    Mobilecontainer5(),
                    MobileContainer6(),
                  ],
                ),
              ),
            ),
          ),
        },
      ),
    ));
  }
}
