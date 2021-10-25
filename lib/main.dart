// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Container(
                  height: 150,
                  width: 150,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/person_profile.png'),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Cassian",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(
                    0xFFFF9881,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Programmer',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  SizedBox(width: 8),
                  // ignore: prefer_const_constructors
                  Text(
                    'Peshawar, Pakistan',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('27'),
                        SizedBox(height: 5),
                        Text('Shots'),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('100'),
                        SizedBox(height: 5),
                        Text('Following'),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Text('2.2m'),
                        SizedBox(height: 5),
                        Text('Likes'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFC09B),
                      Color(0xFFFF9B82),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.grid_4x4,
                        color: Color(
                          0xFFFF9881,
                        ),
                        size: 30),
                    SizedBox(width: 50),
                    Icon(
                      Icons.crop_square,
                      color: Color(
                        0xFFFF9881,
                      ),
                      size: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
