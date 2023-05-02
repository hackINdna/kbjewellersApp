import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../data/constData.dart';
import 'show_exclusive_page_view.dart';

class ShopExclusiveSection extends StatelessWidget {
  const ShopExclusiveSection({
    super.key,
    required this.width,
    required this.height,
    required PageController exclusiveController,
    required this.currentExclusiveIndex,
    required double exclusiveScaleFactor,
  })  : _exclusiveController = exclusiveController,
        _exclusiveScaleFactor = exclusiveScaleFactor;

  final double width;
  final double height;
  final PageController _exclusiveController;
  final double currentExclusiveIndex;
  final double _exclusiveScaleFactor;

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
                  "Shop our Exclusives",
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
              "Especially curated gold jewellery for all your styling needs!",
              maxLines: 2,
              maxFontSize: 12,
              minFontSize: 8,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          ShopExclusivePageView(
              width: width,
              height: height,
              exclusiveController: _exclusiveController,
              currentExclusiveIndex: currentExclusiveIndex,
              exclusiveScaleFactor: _exclusiveScaleFactor),
        ],
      ),
    );
  }
}
