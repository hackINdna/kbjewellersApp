import 'package:flutter/material.dart';

class PolicyWithIcons extends StatelessWidget {
  final double width;
  final double height;
  final String policyText;
  const PolicyWithIcons({
    super.key,
    required this.width,
    required this.height,
    required this.policyText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.2,
      height: height * 0.1,
      alignment: Alignment.center,
      // padding: EdgeInsets.symmetric(vertical: height * 0.005),
      // color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: width * 0.2,
            height: height * 0.05,
            child: Image.asset(
              "assets/images/bsi_hall_mark.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: height * 0.01),
          SizedBox(
            width: width * 0.2,
            height: height * 0.03,
            child: FittedBox(
              child: Text(
                policyText,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
