import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'navBar.dart';

class SplashWindow extends StatefulWidget {
  const SplashWindow({super.key});

  @override
  State<SplashWindow> createState() => _SplashWindowState();
}

class _SplashWindowState extends State<SplashWindow> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  void _navigatetoHome() async {
    await Future.delayed(const Duration(milliseconds: 4500), () {});
    Navigator.pushReplacement(
        this.context,
        MaterialPageRoute(
          builder: (context) => const MyStatefulWidget(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 185, 62),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 16,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 11, 54, 88),
                      Color.fromARGB(255, 84, 173, 214),
                    ],
                  )),
                ),
              ),
              Expanded(
                flex: 6,  
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromARGB(255, 22, 58, 23),
                      Color.fromARGB(255, 79,	173,	25),
                    ],
                  )),
                  // color: Colors.green,
                  // color: Color.fromARGB(255, 155, 209, 53),
                ),
              )
            ],
          ),
          Center(
            child: Lottie.asset('Animations/elephant.json',
                width: double.infinity, repeat: false),
          ),
        ],
      ),
    );
  }
}
