import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

bool Right = true;
int i = 9;
int counter = 0;
Map animals = {
  'image': 'assets/animals/Elephant.jpg',
  'option': [
    '5 - 6 Years',
    '9 - 10 Years',
    '11 - 13 Years',
    '19 Years',
  ],
  'index': 3
};

class LifeSpanQuiz extends StatelessWidget {
  const LifeSpanQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    // Left = true;
    Right = true;
    counter = 0;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.6,
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
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                animals['image'],
                                height: 100,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const BubbleSpecialOne(
                            text: 'Guess LifeSpan of Elephant.. ',
                            color: Color.fromARGB(255, 219, 223, 226),
                            tail: true,
                            isSender: false,
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 16),
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
                      width: MediaQuery.of(context).size.width / 1.5,
                      repeat: true,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Center(
                  child: SizedBox(
                    height: 350,
                    child: LifeSpanOptions(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LifeSpanOptions extends StatelessWidget {
  const LifeSpanOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CardDesignLeftRight(animals['option'][0],0),
          CardDesignLeftRight(animals['option'][1],1),
          CardDesignLeftRight(animals['option'][2],2),
          CardDesignLeftRight(animals['option'][3],3),
        ],
      ),
    );
  }
}

class CardDesignLeftRight extends StatefulWidget {
  String Baby;
  int index;

  CardDesignLeftRight(this.Baby,this.index);

  @override
  State<CardDesignLeftRight> createState() => _CardDesignLeftRightState();
}

class _CardDesignLeftRightState extends State<CardDesignLeftRight> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          if(widget.index==animals['index']){
            
          Right = !Right;
          setState(() {});
          Future.delayed(
            const Duration(milliseconds: 1000),
            () {
              print('Completed');
            showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Colors.green,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, elevation: 12),
                    onPressed: () {},
                    child: const Text(
                      'Completed',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            );
            },
          );
          }
        },
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: MediaQuery.of(context).size.width / 5,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              color: Right ? Colors.white : Colors.green,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color:
                    Right ? const Color.fromARGB(57, 15, 15, 15) : Colors.green,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                widget.Baby,
                style: TextStyle(
                    color: Right ? Colors.black : Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
