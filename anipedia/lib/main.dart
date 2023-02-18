import 'package:anipedia/Data%20Store/information.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>Animals(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: SplashWindow(),
      ),
    );
  }
}


