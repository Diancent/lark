import 'package:flutter/material.dart';
import 'package:lark/screens/home/home.dart';
import 'package:lark/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio store',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const Home(),
    );
  }
}
