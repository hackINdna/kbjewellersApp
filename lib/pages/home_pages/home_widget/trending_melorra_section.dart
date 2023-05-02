import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'trending_melorra_list_view.dart';

class TrendingMelorraSection extends StatelessWidget {
  const TrendingMelorraSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // height: height * 0.4,
      // color: primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: const AutoSizeText(
              "Trending on Melorra",
              maxFontSize: 19,
              minFontSize: 14,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          TrendingMelorraListView(width: width, height: height),
        ],
      ),
    );
  }
}
