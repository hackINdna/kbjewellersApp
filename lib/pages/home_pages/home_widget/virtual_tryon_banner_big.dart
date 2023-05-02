import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_rounded_button.dart';

class VirtualTryOnBannerBig extends StatelessWidget {
  const VirtualTryOnBannerBig({
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
      height: height * 0.25,
      margin: EdgeInsets.symmetric(horizontal: width * 0.025),
      padding: EdgeInsets.only(
        left: width * 0.15,
        right: width * 0.08,
        bottom: height * 0.025,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.brown.shade400,
            // Colors.green.shade300,
            Colors.brown.shade900,
          ],
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Virtual Try-On",
            maxLines: 1,
            maxFontSize: 25,
            minFontSize: 16,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          const AutoSizeText(
            "Don't just see your favourites, try them on with just a click!",
            maxLines: 2,
            maxFontSize: 16,
            minFontSize: 12,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: height * 0.0125),
          CustomRoundedButton(
            width: width * 0.27,
            height: height * 0.03,
            text: "TRY IT ON",
            textColor: Colors.brown,
            buttonColor: Colors.white,
            horizontalPadding: width * 0.065,
          ),
        ],
      ),
    );
  }
}
