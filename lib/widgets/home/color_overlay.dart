import 'package:flutter/material.dart';

class ColorOverlay extends StatelessWidget {
  const ColorOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
