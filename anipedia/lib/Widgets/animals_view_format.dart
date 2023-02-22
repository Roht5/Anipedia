import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Data Store/information.dart';

class AnimalViewFormat extends StatefulWidget {
  int index;
  var name;
  AnimalViewFormat(this.index, this.name);
  @override
  State<AnimalViewFormat> createState() => _AnimalViewFormatState(index, name);
}

class _AnimalViewFormatState extends State<AnimalViewFormat> {
  int index;
  String name;
  _AnimalViewFormatState(this.index, this.name);
  @override
  Widget build(BuildContext context) {
    print('Rebuilds');
    final animalData = Provider.of<Animals>(context, listen: false);
    final animals;
    if (name == 'Extinct Animals') {
      animals = animalData.ExtinctSpecies;
    } else if (name == 'Animals') {
      animals = animalData.Animal;
    } else {
      animals = animalData.Birds;
    }
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Color.fromARGB(141, 33, 149, 243),
          child: GridTile(
            footer: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              color: Colors.black38,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      animals[index]['name'].toString(),
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  FavIconClick(index),
                ],
              ),
            ),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Column(
                      children: [
                        Image.asset(
                          animals[index]["image"].toString(),
                        ),
                        Text(
                          animals[index]['name'].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    content: Text(animals[index]['description'].toString()),
                  ),
                );
              },
              child: Image.asset(
                animals[index]["image"].toString(),
                width: (MediaQuery.of(context).size.width / 4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FavIconClick extends StatefulWidget {
  int index;
  FavIconClick(this.index);

  @override
  State<FavIconClick> createState() => _FavIconClickState();
}

class _FavIconClickState extends State<FavIconClick> {
  @override
  Widget build(BuildContext context) {
    final animalData = Provider.of<Animals>(context);
    final animals = animalData.ExtinctSpecies;
    return animals[widget.index]['fav'] == true
        ? GestureDetector(
            onTap: () {
              animals[widget.index]['fav'] = false;
              setState(() {});
            },
            child: new Icon(
              Icons.favorite_sharp,
              size: 25,
              color: Colors.red,
            ),
          )
        : GestureDetector(
            onTap: () {
              animals[widget.index]['fav'] = true;
              setState(() {});
            },
            child: new Icon(
              Icons.favorite_border_outlined,
              size: 25,
              color: Colors.amber,
            ),
          );
  }
}
