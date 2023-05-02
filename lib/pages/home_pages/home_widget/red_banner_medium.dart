import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_rounded_button.dart';

class RedBannerMedium extends StatelessWidget {
  const RedBannerMedium({
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
          left: width * 0.4, right: width * 0.05, bottom: height * 0.025),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(204, 187, 64, 55),
            Color.fromARGB(220, 82, 24, 24),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Delivering Quick!",
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
            "Choose from 1500+ designs ready to ship",
            maxLines: 2,
            maxFontSize: 16,
            minFontSize: 12,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.0125),
          CustomRoundedButton(
            width: width * 0.25,
            height: height * 0.03,
            text: "VIEW ALL",
            textColor: Colors.brown,
            buttonColor: Colors.white,
            horizontalPadding: width * 0.06,
          ),
        ],
      ),
    );
  }
}
