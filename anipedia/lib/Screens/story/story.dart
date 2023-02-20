import 'package:anipedia/Screens/story/storiesViewFormat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          child: StoriesViewFormat(),
        ),
      ),
    );
  }
}
