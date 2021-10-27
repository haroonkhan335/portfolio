import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/screens/home.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
