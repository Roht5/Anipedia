import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StoriesViewFormat extends StatelessWidget {
  const StoriesViewFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.065,
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(255, 16, 8, 87),
                                  Colors.blue,
                                ],
                              )),
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 1.3,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/animals/wobackgiraffe.jpg'),
                  )
                ],
              ),
            );
          }),
    );
  }
}
