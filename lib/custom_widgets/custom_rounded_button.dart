import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.horizontalPadding,
    required this.textColor,
    required this.buttonColor,
  });

  final double width;
  final double height;
  final String text;
  final double horizontalPadding;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: buttonColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: FittedBox(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
