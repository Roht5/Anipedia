import 'package:flutter/material.dart';

import '../Widgets/fav_container.dart';

class Favourtie extends StatelessWidget {
  const Favourtie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text(
          "Favorites",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30
          ),
        ),
      ),
      body: ListView(
        children: const [
          SizedBox(height: 15,),
          FavContainer(),
        ],
      ),
    );
  }
}
