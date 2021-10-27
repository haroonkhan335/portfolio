import 'package:flutter/material.dart';

class ImageOverlay extends StatelessWidget {
  const ImageOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/overlay.png',
        ),
      ),
    );
  }
}
