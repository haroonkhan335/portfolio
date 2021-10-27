import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home/color_overlay.dart';
import 'package:portfolio/widgets/home/image_overlay.dart';
import 'package:portfolio/widgets/home/profile_information.dart';
import 'package:portfolio/widgets/home/user_portfolio.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> images = [
    'assets/posts (1).png',
    'assets/posts (2).png',
    'assets/posts (3).png',
    'assets/posts (4).png',
    'assets/posts (5).png',
    'assets/posts (6).png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const ImageOverlay(),
            const ColorOverlay(),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const ProfileInformation(),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
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
                  UserPortfolio(images: images),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
