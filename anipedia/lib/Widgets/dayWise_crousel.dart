import 'package:flutter/material.dart';

import '../Data Store/information.dart';
import 'package:provider/provider.dart';

class AnimalOfDayCrousel extends StatelessWidget {
  const AnimalOfDayCrousel({super.key});

  @override
  Widget build(BuildContext context) {
    final animalData = Provider.of<Animals>(context);
    final animalDay = animalData.animalOfDay;
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animalDay.length,
        itemBuilder: (context, index) {
          return CrouselFormat(
              animalDay[index]['name'], animalDay[index]['image']);
        },
      ),
    );
  }
}

class CrouselFormat extends StatelessWidget {
  var name;
  var image;
  CrouselFormat(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      padding: const EdgeInsets.all(15),
      height: 25,
      width: MediaQuery.of(context).size.width / 1.065,
      child: Stack(
        children: [
          Container(
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            alignment: Alignment.bottomCenter,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 18, 70, 160),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '🤔!!!',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 233, 234, 252)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 233, 234, 252),
                                elevation: 15,
                                shadowColor:
                                    const Color.fromARGB(255, 250, 246, 41),
                              ),
                              child: const Text(
                                'Facts',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 18, 70, 160),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            alignment: Alignment.centerRight,
            child: Image.asset(image.toString()),
          )
        ],
      ),
    );
  }
}
