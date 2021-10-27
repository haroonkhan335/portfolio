import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/person_profile.png'),
          radius: 70,
          backgroundColor: Colors.transparent,
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
                children: const [
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
                children: const [
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
      ],
    );
  }
}
