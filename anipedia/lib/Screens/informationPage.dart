// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Data Store/information.dart';
import 'package:provider/provider.dart';

import '../Widgets/animals_view_format.dart';

class InformationPage extends StatelessWidget {
  var name;
  InformationPage(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    final animalData = Provider.of<Animals>(context);
    final animals;
    if (name == 'Extinct Animals') {
      animals = animalData.ExtinctSpecies;
    } else if (name == 'Animals') {
      animals = animalData.Animal;
    } else {
      animals = animalData.Birds;
    }
    print("Hello It runs in background");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          name,
          style: const TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: animals.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                child: AnimalViewFormat(index, name),
              );
            }),
      ),
      // endDrawer: ,
    );
  }
}
