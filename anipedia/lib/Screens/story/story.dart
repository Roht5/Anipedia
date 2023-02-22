import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:anipedia/Screens/story/storiesViewFormat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// import 'package:gradient_app_bar/gradient_app_bar.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Stories',
              textStyle: const TextStyle(
                fontSize: 32.0,
                color: Color.fromARGB(255, 16, 8, 87),
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 300),
            ),
          ],
          totalRepeatCount: 400,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.greenAccent,
                Color.fromARGB(255, 31, 146, 37),
              ],
            ),
          ),
        ),
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
