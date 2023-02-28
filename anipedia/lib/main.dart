import 'package:anipedia/Data Store/information.dart';
import 'package:anipedia/Data%20Store/quiz_information.dart';
import 'package:anipedia/Data%20Store/storiesInformation.dart';
import 'package:anipedia/firebase/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Animals()),
      ChangeNotifierProvider(create: (_) => Quiz()),
      ChangeNotifierProvider(create: (_) => Stories()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: WidgetTree(),
    );
  }
}
