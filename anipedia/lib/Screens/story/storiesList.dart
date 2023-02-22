import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Storieslist extends StatelessWidget {
  const Storieslist({super.key});

  @override
  Widget build(BuildContext context) {
    var storyName = [
      {
        'name': 'Stories From Panchatantra',
        'image': 'assets/wo/wopanchatantra.png'
      },
    ];
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return StoriesPage2(
            storyName[index]['name'], storyName[index]['image'], index);
      }),
    );
  }
}

class StoriesPage2 extends StatelessWidget {
  var name;
  var image;
  int index;
  StoriesPage2(this.name, this.image, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 1.065,
      padding: const EdgeInsets.all(10),
    );
  }
}
