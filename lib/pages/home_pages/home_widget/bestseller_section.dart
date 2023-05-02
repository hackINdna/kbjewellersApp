import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import 'bestseller_page_view_widget.dart';

class BestsellerSection extends StatelessWidget {
  const BestsellerSection({
    super.key,
    required this.width,
    required this.height,
    required this.pageController,
    required this.currentPageIndex,
    required this.scaleFactor,
    required this.sectionTitle,
    required this.sectionSubTitle,
  });

  final double width;
  final double height;
  final PageController pageController;
  final double currentPageIndex;
  final double scaleFactor;
  final String sectionTitle;
  final String sectionSubTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height * 0.515,
      // color: primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  sectionTitle,
                  maxFontSize: 19,
                  minFontSize: 14,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const AutoSizeText(
                  "View all",
                  maxFontSize: 15,
                  minFontSize: 10,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: amberColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.only(left: width * 0.025, right: width * 0.2),
            child: AutoSizeText(
              sectionSubTitle,
              maxLines: 2,
              maxFontSize: 12,
              minFontSize: 8,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          BestsellerPageView(
            width: width,
            height: height,
            pageController: pageController,
            currentPageIndex: currentPageIndex,
            scaleFactor: scaleFactor,
          ),
        ],
      ),
    );
  }
}
