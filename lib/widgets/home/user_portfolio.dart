import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home/post_image.dart';

class UserPortfolio extends StatelessWidget {
  const UserPortfolio({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1,
                ),
                children: List.generate(
                  images.length,
                  (index) {
                    return PostImage(image: images[index]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
