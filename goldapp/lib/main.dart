import 'package:flutter/material.dart';
//import 'package:goldapp/counterapp.dart';
import 'package:goldapp/gradient_colors.dart';
//import 'package:get/get.dart';
//import 'package:goldapp/Goldapp.dart';
//import 'package:goldapp/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:gradientcolors(),
      // counterapp(),
      //splashscreen()
      // goldapp(),
    );
  }
}