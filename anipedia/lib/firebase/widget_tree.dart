import 'package:anipedia/Screens/navBar.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'home_page.dart';
import 'login_register_page.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context,snapshot){
        if (snapshot.hasData) {
          return const MyStatefulWidget();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}