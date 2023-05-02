import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/constData.dart';

class ViewAllWithIcon extends StatelessWidget {
  const ViewAllWithIcon({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width * 0.1,
          height: width * 0.1,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: amberColor,
          ),
          child: Icon(
            Icons.arrow_forward_sharp,
            color: Colors.white,
            size: width * 0.06,
          ),
        ),
        const AutoSizeText(
          "View all",
          style: TextStyle(
            color: amberColor,
            fontSize: 16,
            height: 1.5,
          ),
        )
      ],
    );
  }
}
