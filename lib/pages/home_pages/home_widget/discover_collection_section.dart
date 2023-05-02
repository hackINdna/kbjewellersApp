import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import 'banner_page_indicator.dart';
import 'discover_collection_page_view.dart';

class DiscoverCollectionSection extends StatelessWidget {
  final double width;
  final double height;
  final int discoverCollectionIndex;
  final Function(int value) changePageIndex;

  const DiscoverCollectionSection({
    super.key,
    required this.width,
    required this.height,
    required this.changePageIndex,
    required this.discoverCollectionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                AutoSizeText(
                  "Discover our Collections",
                  maxFontSize: 19,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                AutoSizeText(
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
            child: const AutoSizeText(
              "From the runways of Milan, Paris, & London, right into your jewellery box!",
              maxLines: 2,
              maxFontSize: 12,
              minFontSize: 8,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: height * 0.04),
          SizedBox(
            width: width,
            height: height * 0.38,
            // color: Colors.orange,
            child: DiscoverCollectionPageView(
              width: width,
              height: height,
              changePageIndex: changePageIndex,
            ),
          ),
          BannerPageIndicator(
            width: width,
            height: height,
            bannerIndex: discoverCollectionIndex,
          ),
        ],
      ),
    );
  }
}
