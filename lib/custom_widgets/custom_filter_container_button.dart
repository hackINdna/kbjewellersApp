import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FilterContainerButton extends StatelessWidget {
  const FilterContainerButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
  });

  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.04,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AutoSizeText(
            text,
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 8,
            style: const TextStyle(
              color: Colors.black38,
              fontSize: 12,
            ),
          ),
          SizedBox(width: width * 0.015),
          Icon(
            Icons.close,
            size: width * 0.03,
          )
        ],
      ),
    );
  }
}
