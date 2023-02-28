import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

import '../../Data Store/storiesInformation.dart';

FlutterTts flutterTts = FlutterTts();
double vol = 1.0;
Narrate(String text) async {
  await flutterTts.setLanguage("hi-IN");
  await flutterTts.setPitch(1.0);
  await flutterTts.speak(text);
  await flutterTts.setSpeechRate(0.3);
  await flutterTts.setVolume(1.0);
}

class StoriesDisplayPage extends StatefulWidget {
  @override
  State<StoriesDisplayPage> createState() => _StoriesDisplayPageState();
}

class _StoriesDisplayPageState extends State<StoriesDisplayPage> {
  // FlutterTts flutterTts = FlutterTts();

  // bool sound = true;

  // Narrate(String text) async {
  //   await flutterTts.setLanguage("en-India");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak(text);
  //   await flutterTts.setSpeechRate(0.3);
  //   await flutterTts.setVolume(1.0);
  // }

  final ScrollController _scrollController = ScrollController();
  final controller = ScrollController();
  void ScrollDown() {
    final double end = controller.position.maxScrollExtent;
    controller.jumpTo(end);
  }

  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Stories>(context, listen: false);
    final Panchatantra = quizData.Panchatantra;
    int timer = 26;
    // Narrate(Panchatantra[0]['storyName'].toString());
    Narrate('Namaste');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 10, 15),
        title: Row(
          children: [
            Text(Panchatantra[0]['storyName'].toString()),
            const Spacer(),
            const IconClick(),
            const Spacer()
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Color.fromARGB(255, 15, 53, 83),
              ],
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: Panchatantra[0]['story'].length,
            controller: ScrollController(
              keepScrollOffset: false,
              initialScrollOffset:20.0,
              debugLabel: 'fgfhf'
            ),
            itemBuilder: (BuildContext context, int index) {
              return FutureBuilder(
                future: Future.delayed(Duration(milliseconds: timer * 78)),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  timer = timer +
                      Panchatantra[0]['story'][index]['line'].toString().length;
                  // ScrollDown();
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (Panchatantra[0]['story'][index]['pov'] == 'narrator') {
                      return NarratorFormat(index);
                    } else if (Panchatantra[0]['story'][index]['pov'] ==
                        'char1') {
                      return User1Format(index);
                    } else {
                      return User2Format(index);
                    }
                    // return NarratorFormat(index);

                  } else {
                    // show a loading indicator while waiting for the delay to complete
                    return const Center();
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class User1Format extends StatelessWidget {
  int index;
  User1Format(this.index);

  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Stories>(context, listen: false);
    final Panchatantra = quizData.Panchatantra;
    Narrate(Panchatantra[0]['story'][index]['line'].toString());
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              Panchatantra[0]['story'][index]['name'].toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Material(
              elevation: 8,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(0),
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width / 1.4,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(-5),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        Panchatantra[0]['story'][index]['line'].toString(),
                        textStyle: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 75),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class User2Format extends StatelessWidget {
  int index;
  User2Format(this.index);

  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Stories>(context, listen: false);
    final Panchatantra = quizData.Panchatantra;
    Narrate(Panchatantra[0]['story'][index]['line'].toString());
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              Panchatantra[0]['story'][index]['name'].toString(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Material(
              elevation: 8,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(0),
                topLeft: Radius.circular(15),
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width / 1.4,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        Panchatantra[0]['story'][index]['line'].toString(),
                        textStyle: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 75),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NarratorFormat extends StatelessWidget {
  int index;
  NarratorFormat(this.index);

  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Stories>(context, listen: false);
    final Panchatantra = quizData.Panchatantra;
    Narrate(Panchatantra[0]['story'][index]['line'].toString());
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Narrator',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 1.2,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width / 1.1,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      Panchatantra[0]['story'][index]['line'].toString(),
                      textStyle: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 75),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconClick extends StatefulWidget {
  const IconClick({super.key});

  @override
  State<IconClick> createState() => _IconClickState();
}

class _IconClickState extends State<IconClick> {
  bool sound = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(vol);
        sound = !sound;
        if (vol == 1.0) {
          vol = 0.0;
        } else {
          vol = 1.0;
        }
        setState(() {});
      },
      child: Icon(
        sound ? Icons.volume_up_outlined : Icons.volume_off_outlined,
        size: 30,
      ),
    );
  }
}
