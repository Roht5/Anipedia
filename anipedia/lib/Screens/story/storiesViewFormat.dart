import 'package:anipedia/Screens/story/storiesList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StoriesViewFormat extends StatelessWidget {
  const StoriesViewFormat({super.key});
  @override
  Widget build(BuildContext context) {
    var bookName = [
      {
        'name': 'Stories From Panchtantra',
        'image': 'assets/wo/wopanchatantra.png'
      },
      {'name': 'The fables of Aesop', 'image': 'assets/wo/wobackgiraffe.png'},
      {
        'name': 'Stories From Panchtantra',
        'image': 'assets/wo/wopanchatantra.png'
      },
      {
        'name': 'Stories From Panchtantra',
        'image': 'assets/wo/wopanchatantra.png'
      },
    ];

    return Container(
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return StoriesListFormat(
                bookName[index]['name'], bookName[index]['image'], index);
          }),
    );
  }
}

class StoriesListFormat extends StatelessWidget {
  var name;
  var image;
  int index;
  StoriesListFormat(this.name, this.image, this.index);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Storieslist()),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 1.065,
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              alignment:
                  index % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
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
                    child: Row(
                      mainAxisAlignment: index % 2 == 0
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(left: 8),
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.black)),
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name.toString(),
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 233, 234, 252),
                                  // decorationColor: Gr
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
              alignment:
                  index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
              child: Image.asset(
                image.toString(),
                width: MediaQuery.of(context).size.width / 2.1,
              ),
            )

            // new container for building the image and name on reverse sight
          ],
        ),
      ),
    );
  }
}
