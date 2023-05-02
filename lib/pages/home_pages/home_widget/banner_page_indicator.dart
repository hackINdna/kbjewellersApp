import 'package:flutter/material.dart';

import 'circular_banner_page_indicators.dart';

class BannerPageIndicator extends StatelessWidget {
  const BannerPageIndicator({
    super.key,
    required this.width,
    required this.height,
    required this.bannerIndex,
  });

  final double width;
  final double height;
  final int bannerIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.03,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: width * 0.43),
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularBannerPageIndicator(
            showIndicator: bannerIndex == 0,
          ),
          CircularBannerPageIndicator(
            showIndicator: bannerIndex == 1,
          ),
          CircularBannerPageIndicator(
            showIndicator: bannerIndex == 2,
          ),
          CircularBannerPageIndicator(
            showIndicator: bannerIndex == 3,
          ),
          CircularBannerPageIndicator(
            showIndicator: bannerIndex == 4,
          ),
        ],
      ),
    );
  }
}
