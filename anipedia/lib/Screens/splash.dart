
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
      backgroundColor: const Color.fromARGB(255, 76, 175, 79),
      body: Center(
        child: Lottie.asset(
          'Animations/elephant.json',
          width: double.infinity,
          repeat: false
        ),
      ),
    );
  }
}


