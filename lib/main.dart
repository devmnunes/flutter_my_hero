import 'package:flutter/material.dart';
//import 'package:flutter_my_hero/screens/home_screen.dart';
import 'package:flutter_my_hero/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
