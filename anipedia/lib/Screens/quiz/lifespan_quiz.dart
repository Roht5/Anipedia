import 'package:anipedia/Data%20Store/quiz_information.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

int counter = 0;
int colorset = 0;
int i = 9;
int indexL = 0;

class LifeSpanQuiz extends StatefulWidget {
  @override
  State<LifeSpanQuiz> createState() => _LifeSpanQuizState();
}

class _LifeSpanQuizState extends State<LifeSpanQuiz> {
  void nextQuestion() {
    if (indexL == 3) {
      indexL = 0;
    } else {
      indexL++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Quiz>(context, listen: false);
    final lifespan = quizData.LifeSpan;
    String name = lifespan[indexL]['name'].toString();
    colorset = 0;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              LinearPercentIndicator(
                addAutomaticKeepAlive: true,
                animateFromLastPercent: true,
                width: MediaQuery.of(context).size.width,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: lifespan[indexL]['linerbar'],
                barRadius: const Radius.circular(15),
                // linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      height: 250,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.7,
                        padding: const EdgeInsets.all(15.0),
                        height: 200,
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Material(
                              elevation: 8,
                              borderRadius: BorderRadius.circular(15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  lifespan[indexL]['image'].toString(),
                                  height: 100,
                                ),
                              ),
                            ),
                            const Spacer(),
                            BubbleSpecialOne(
                              text: 'Guess LifeSpan of $name ....',
                              color: const Color.fromARGB(255, 219, 223, 226),
                              tail: true,
                              isSender: false,
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      child: Lottie.asset(
                        'Animations/GirlQuestion.json',
                        width: MediaQuery.of(context).size.width / 2,
                        repeat: true,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: SizedBox(
                        height: 350,
                        child: Container(
                          child: Column(
                            children: [
                              CardDesignLeftRight(
                                  lifespan[indexL]['lifespans'][0],
                                  0,
                                  nextQuestion),
                              CardDesignLeftRight(
                                  lifespan[indexL]['lifespans'][1],
                                  1,
                                  nextQuestion),
                              CardDesignLeftRight(
                                  lifespan[indexL]['lifespans'][2],
                                  2,
                                  nextQuestion),
                              CardDesignLeftRight(
                                  lifespan[indexL]['lifespans'][3],
                                  3,
                                  nextQuestion),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDesignLeftRight extends StatefulWidget {
  String years;
  int index;
  final VoidCallback nextQuestion;
  CardDesignLeftRight(this.years, this.index, this.nextQuestion);

  @override
  State<CardDesignLeftRight> createState() => _CardDesignLeftRightState();
}

class _CardDesignLeftRightState extends State<CardDesignLeftRight> {
  @override
  Widget build(BuildContext context) {
    final quizData = Provider.of<Quiz>(context, listen: false);
    final lifespan = quizData.LifeSpan;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          // if (widget.index == lifespan[indexL]['correctIndex']) {
          int selectedIndex = widget.index;
          int rightAnswer = lifespan[indexL]['correctIndex'];
          if (selectedIndex == rightAnswer) {
            counter++;
            colorset = 1;
          } else {
            colorset = 2;
          }
          setState(() {});
          Future.delayed(
            const Duration(milliseconds: 300),
            () {
              print('Completed');
              showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                context: context,
                builder: (builder) {
                  return Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: selectedIndex == rightAnswer
                          ? Colors.green
                          : Colors.red,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            selectedIndex == rightAnswer
                                ? 'Correct !!'
                                : 'Incorrect !!',
                            style: const TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 12,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            if (indexL == 3) {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Column(
                                    children:  [
                                      const Text('Your Score:'),
                                      Text(counter.toString())
                                    ],
                                  ),
                                  content: ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                    indexL=0;
                                    counter=0;
                                  }, child: const Text('Done')),
                                ),
                              );
                            } else {
                              widget.nextQuestion();
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: selectedIndex == rightAnswer
                                    ? Colors.green
                                    : Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
          // }
        },
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: MediaQuery.of(context).size.width / 5,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              color: colorset == 0
                  ? Colors.white
                  : colorset == 1
                      ? Colors.green
                      : Colors.red,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: colorset == 0
                    ? const Color.fromARGB(57, 15, 15, 15)
                    : colorset == 1
                        ? Colors.green
                        : Colors.red,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                widget.years,
                style: TextStyle(
                    color: colorset == 0 ? Colors.black : Colors.white,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
