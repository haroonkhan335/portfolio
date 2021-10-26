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
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/overlay.png',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(0xFFF5D4CA).withOpacity(0.7),
                    Color(0xFFF5D4CA).withOpacity(0.7),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/person_profile.png'),
                    radius: 70,
                    backgroundColor: Colors.transparent,
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(500),
                  //   child: Container(
                  //     height: 150,
                  //     width: 150,
                  //     child: const Image(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage('assets/person_profile.png'),
                  //     ),
                  //   ),
                  // ),
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
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 7,
                            width: 80,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text('Photos'),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                PostImage(image: 'assets/posts (1).png'),
                                PostImage(image: 'assets/posts (2).png'),
                                PostImage(image: 'assets/posts (3).png')
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                PostImage(image: 'assets/posts (4).png'),
                                PostImage(image: 'assets/posts (5).png'),
                                PostImage(image: 'assets/posts (6).png'),

                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: Container(
                                //     height: 80,
                                //     width: 80,
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(8),
                                //         image: DecorationImage(
                                //             image: AssetImage(
                                //                 'assets/posts (6).png'))),
                                //   ),
                                // )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
