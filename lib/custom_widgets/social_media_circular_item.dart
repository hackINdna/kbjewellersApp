import 'package:flutter/material.dart';

class SocialMeidaCircularItem extends StatelessWidget {
  const SocialMeidaCircularItem({
    super.key,
    required this.height,
    // required this.imageName,
  });

  final double height;
  // final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height * 0.055,
      height: height * 0.055,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
    );
  }
}
