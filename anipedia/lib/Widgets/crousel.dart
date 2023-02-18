import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../Data Store/information.dart';
import 'package:provider/provider.dart';
import '../Screens/informationPage.dart';

class CrouselWidget extends StatelessWidget {
  const CrouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final animalData = Provider.of<Animals>(context);
    List organismT = animalData.OrganismType;
    return Container(
      padding: const EdgeInsets.all(10),
      width: (MediaQuery.of(context).size.width / 1.1),
      height: (MediaQuery.of(context).size.width / 1.85),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 140,
                  color: Colors.white,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      '',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Container(
              alignment: Alignment.center,
              height: (MediaQuery.of(context).size.width / 1.9),
              width: (MediaQuery.of(context).size.width / 1.1),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: organismT.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CrouselWidgetSample(
                          organismT[index]['name'], organismT[index]['image']),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class CrouselWidgetSample extends StatelessWidget {
  var name;
  var image;
  CrouselWidgetSample(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InformationPage(name)),
        );
      },
      child: Container(
        height: (MediaQuery.of(context).size.width / 1.9),
        child: Column(
          children: [
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 30,
                  width: 130,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 25, 85, 134),
                  // child: Text(name.toString(),style: const TextStyle(fontSize: 20,color: Colors.white),),
                  child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(name.toString(),
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.white,)),
                  
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 1,
                pause: Duration(milliseconds: 2000),
              ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    image.toString(),
                    height: 130,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
