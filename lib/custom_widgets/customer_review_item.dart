import 'package:flutter/material.dart';

import '../data/constData.dart';

class CustomerReviewItem extends StatelessWidget {
  final double width;
  final String text;
  const CustomerReviewItem({
    super.key,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.7,
      decoration: BoxDecoration(
          color: Colors.white,
          // color: amberColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 5,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.5),
            ),
          ]),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
