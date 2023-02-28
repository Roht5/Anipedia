import 'package:flutter/material.dart';

double percentage = 0.4;

class QuizWindow extends StatelessWidget {
  const QuizWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Quiz',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(

        child: ListView(
          children:   [
              QuizList(0),
              QuizList(1),
              QuizList(2.8),
              QuizList(3.6),
              QuizList(3.4),
              QuizList(1),
              QuizList(2),
              QuizList(2),
              QuizList(1),
              QuizList(0),
          ],
        ),



        // child: Center(
        //   child: ElevatedButton(
        //     onPressed: () => Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => LifeSpanQuiz()),
        //     ),
        //     child: const Text('Life Span Quiz'),
        //   ),
        // ),
      ),
    );
  }
}


class QuizList extends StatelessWidget {
  double index;
  QuizList(this.index);

  @override
  Widget build(BuildContext context) {
    double padd=60+index*40;
    return Container(
      height: 100,
      width: double.infinity,
      padding:  EdgeInsets.only(left: padd),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 80,
              width: 80,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}