import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:anipedia/Data%20Store/storiesInformation.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

  List<String> texts = [
    "Monetization",
    "Pie Chart",
    "Flag",
    "Notification",
    "Savings",
    "Cloud",
    "Nightlight",
    "Assignment",
    "Location",
    "Settings",
    "Rocket",
    "Backpack",
    "Person",
    "Done All",
    "Search",
    "Extension",
    "Bluetooth",
    "Favorite",
    "Lock",
    "Bookmark",
  ];

  List<IconData> icons = [
    Icons.monetization_on,
    Icons.pie_chart,
    Icons.flag,
    Icons.notifications,
    Icons.savings,
    Icons.cloud,
    Icons.nightlight_round,
    Icons.assignment,
    Icons.location_pin,
    Icons.settings,
    Icons.rocket,
    Icons.backpack,
    Icons.person,
    Icons.done_all,
    Icons.search,
    Icons.extension,
    Icons.bluetooth,
    Icons.favorite,
    Icons.lock,
    Icons.bookmark,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF222431),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                Panchatantra[0]['storyName'].toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: Panchatantra[0]['story'].length,
                itemBuilder: (context, index) {
                  return item(index);
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(int index) {
    return AnimatedContainer(
      height: 70,
      width: screenWidth,
      // curve: Curves.easeInOut,
      duration: Duration(milliseconds: 500 + (index * 5000)),
      transform: Matrix4.translationValues(
        startAnimation ?  0:
        screenWidth,
        0,
        0,
      ),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: AnimatedTextKit(
        isRepeatingAnimation: false,
        animatedTexts: [
          TyperAnimatedText(
            Panchatantra[0]['story'][index]['line'].toString(),
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}