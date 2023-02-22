import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Data Store/information.dart';

class FavContainer extends StatefulWidget {
  const FavContainer({super.key});

  @override
  State<FavContainer> createState() => _FavContainerState();
}

class _FavContainerState extends State<FavContainer> {
  @override
  Widget build(BuildContext context) {
    final animalData = Provider.of<Animals>(context);
    final animals = animalData.ExtinctSpecies;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.red,
        width: double.infinity,
        // color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightBlue, Colors.lightGreen],
                  ),
                ),
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  "Extinct Animals",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              child: Container(
              alignment: Alignment.center,
              width: (MediaQuery.of(context).size.width / 1.1),
              height: 200,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: animals.length,
                  itemBuilder: (BuildContext context, int index) {
                    return animals[index]['fav']==true? Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: FavContainerFormat(animals[index]['name'],animals[index]['image']),
                    ):SizedBox();
                  }),
            ),)
          ],
        ),
      ),
    );
  }
}

class FavContainerFormat extends StatelessWidget {
  var name;
  var image;
   FavContainerFormat(this.name,this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width/1.1,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  // color: Colors.green,
                  height: 170,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 180,
                    height: 170,
                    color: Colors.amber,
                    child: Center(
                      child: Text(name),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                child: Image.asset(
                  image.toString(),
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.fitHeight,
                  height: 180,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
