import 'package:anipedia/Widgets/Crousel.dart';
import 'package:anipedia/Widgets/dayWise_crousel.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'informationPage.dart';

class Home extends StatelessWidget {
  const Home({super.key});  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   shadowColor: Colors.white,
      //   backgroundColor: Colors.white,
      //   toolbarHeight: 80,
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Row(
            children: [
              SizedBox(
                height: 40,
                width: 140,
                child: AnimatedTextKit(
                  pause: const Duration(seconds: 10),
                  totalRepeatCount: 5000000000000000,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Anipedia',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 25, 85, 134),
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/Dp1.webp',
                    height: 60,
                  ),
                ),
              ),
            ],
          ),
              const AnimalOfDayCrousel(),
              const SizedBox(
                height: 10,
              ),
              const CrouselWidget(),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationPage('Extinct Animals')),
                  );
                },
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 25, 85, 134),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: (MediaQuery.of(context).size.width / 0.9),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          child: Image.asset(
                            'assets/tiger.jpg',
                            width: (MediaQuery.of(context).size.width / 2.5),
                          ),
                        ),
                        const Spacer(),
                        Center(
                            child: Column(
                          children: const [
                            Text(
                              'Extinct\nSpecies ',
                              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
