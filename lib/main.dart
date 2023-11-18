import 'package:flutter/material.dart';
import 'package:secondproject/screen1.dart';
import 'package:secondproject/screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen1()
    );
  }
}