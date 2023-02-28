import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../firebase/auth.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final User? user = Auth().currentUser;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 212, 211, 211),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const BackButton(color: Colors.black),
            ),
            Container(
              height: 150,
              color: const Color.fromARGB(255, 212, 211, 211),
              width: double.infinity,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/Dp1.webp',
                    width: 80,
                  ),
                ),
              ),
            ),
            const Divider(),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text('Email:  '),
                  Text(user?.email ?? 'User email'),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text('Name:  '),
                  const Text('Arijit Singh'),
                  Text(user?.displayName ?? 'User email'),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Icon(
                    Icons.diamond_outlined,
                    color: Color.fromARGB(255, 25, 85, 134),
                  ),
                  Text('  390 Points')
                ],
              ),
            ),
            const Spacer(),
            const Divider(),
            GestureDetector(
              onTap: () {
                print('hello');
                signOut;
              },
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(Icons.logout_outlined),
                    Text('Sign Out')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
