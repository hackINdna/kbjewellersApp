import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_rounded_button.dart';

class BrownBannerSmall extends StatelessWidget {
  const BrownBannerSmall({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.125,
      margin: EdgeInsets.symmetric(horizontal: width * 0.025),
      padding: EdgeInsets.only(left: width * 0.1, right: width * 0.3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.brown.shade300,
            Colors.brown,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Get all the latest offers, discount codes & more!",
            maxLines: 2,
            maxFontSize: 16,
            minFontSize: 12,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: height * 0.008),
          CustomRoundedButton(
            width: width * 0.25,
            height: height * 0.03,
            text: "EXPLORE",
            textColor: Colors.brown,
            buttonColor: Colors.white,
            horizontalPadding: width * 0.06,
          ),
        ],
      ),
    );
  }
}
