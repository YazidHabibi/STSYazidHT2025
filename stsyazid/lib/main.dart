import 'package:flutter/material.dart';
import 'package:stsyazid/LoginSTS.dart';

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
      title: 'STS Yazid 2025',
      theme: ThemeData(
      ),
      home: LoginSTSPage(),
    );
  }
}


