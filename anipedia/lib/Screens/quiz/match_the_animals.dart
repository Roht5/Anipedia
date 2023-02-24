import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:percent_indicator/percent_indicator.dart';

List animals = ['lion', 'elephant', 'dog', 'sheep'];
List babies = ['cub', 'calf', 'puppy', 'lamb'];

bool Left = true;
bool Right = true;
int i = 9;
bool leftSelected = false;
bool rightSelected = false;
int counter = 0;

class MatchTheAnimalsScreen extends StatelessWidget {
  const MatchTheAnimalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Left = true;
    Right = true;
    leftSelected = false;
    rightSelected = false;
    counter = 0;
    return SafeArea(
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
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Lottie.asset(
                    'Animations/QuestionBoy.json',
                    width: MediaQuery.of(context).size.width / 1.5,
                    repeat: true,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    padding: const EdgeInsets.all(15.0),
                    height: 110,
                    alignment: Alignment.bottomCenter,
                    child: const BubbleSpecialOne(
                      text: 'Match the animal with its baby ',
                      color: Color.fromARGB(255, 219, 223, 226),
                      tail: true,
                      isSender: false,
                      textStyle: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    // Text('Match Animal With Baby',
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //     ),
                    //     textAlign: TextAlign.center),
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
                  child: OptionsContainer(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionsContainer extends StatelessWidget {
  const OptionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List shuffleBabies = List.from(babies);
    shuffleBabies.shuffle();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CardDesignLeft(animals[0], 0),
              CardDesignLeft(animals[1], 1),
              CardDesignLeft(animals[2], 2),
              CardDesignLeft(animals[3], 3),
            ],
          ),
          Column(
            children: [
              CardDesignLeftRight(shuffleBabies[0]),
              CardDesignLeftRight(shuffleBabies[1]),
              CardDesignLeftRight(shuffleBabies[2]),
              CardDesignLeftRight(shuffleBabies[3]),
            ],
          )
        ],
      ),
    );
  }
}

class CardDesignLeft extends StatefulWidget {
  String Baby;
  int index;

  CardDesignLeft(this.Baby, this.index);

  @override
  State<CardDesignLeft> createState() => _CardDesignLeftState();
}

class _CardDesignLeftState extends State<CardDesignLeft> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          if (!leftSelected) {
            Left = !Left;
            i = widget.index;
            leftSelected = true;
            counter++;
            setState(() {});
            Future.delayed(const Duration(milliseconds: 100), () {
              Left = !Left;
            });
          }
        },
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: MediaQuery.of(context).size.width / 5,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: Left ? Colors.white : Colors.green,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Left
                    ? const Color.fromARGB(57, 158, 158, 158)
                    : Colors.green,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                widget.Baby,
                style: TextStyle(
                    color: Left ? Colors.black : Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardDesignLeftRight extends StatefulWidget {
  String Baby;

  CardDesignLeftRight(this.Baby);

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
          if (!rightSelected) {
            if (babies[i] == widget.Baby) {
              Right = !Right;
              setState(() {});
              rightSelected = false;
              leftSelected = false;
              Future.delayed(const Duration(milliseconds: 100), () {
                Right = !Right;
              });
            }
          }
          if (counter == 4) {
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
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 12
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Completed',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
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
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
              color: Right ? Colors.white : Colors.green,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Right
                    ? const Color.fromARGB(57, 158, 158, 158)
                    : Colors.green,
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
