import 'package:flutter/material.dart';
import '../Data Store/information.dart';
import 'package:provider/provider.dart';

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
          width: double.infinity,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: const Text(
                  "Extinct Animals",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Divider(),
              Container(
                height: 200,
                width: 200,
                child: Stack(
                  children: [
                    Container(
                      height: 170,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
