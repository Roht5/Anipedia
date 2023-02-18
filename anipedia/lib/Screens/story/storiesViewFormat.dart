import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StoriesViewFormat extends StatelessWidget {
  const StoriesViewFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // padding: EdgeInsets.all(10),
        height: 200,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(200),
              ),
              child: Image.asset(
                'assets/Birds2.jpg',
                height: 200,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Center(
                child: Text(
                  'Sparrow And Marbles',
                  style: TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
