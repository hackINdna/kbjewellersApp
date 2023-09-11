import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class IconWithTextButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final IconData icon;
  final double padding;
  const IconWithTextButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.icon,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.black26,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          AutoSizeText(
            text,
            maxFontSize: 14,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
