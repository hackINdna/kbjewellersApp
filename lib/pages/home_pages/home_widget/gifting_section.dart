import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';

import '../../../data/constData.dart';
import 'banner_page_indicator.dart';
import 'gifting_easy_page_view.dart';

class GiftingSection extends StatefulWidget {
  final double width;
  final double height;
  const GiftingSection({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  State<GiftingSection> createState() => _GiftingSectionState();
}

class _GiftingSectionState extends State<GiftingSection> {
  int giftingIndex = 0;
  void _changeGiftPage(int value) {
    setState(() {
      giftingIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height * 0.56,
      // color: primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.width * 0.025),
            child: const AutoSizeText(
              "Gifting Made Easy",
              maxFontSize: 19,
              minFontSize: 14,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: widget.height * 0.008),
          Padding(
            padding: EdgeInsets.only(
                left: widget.width * 0.025, right: widget.width * 0.2),
            child: const AutoSizeText(
              "Explore gifts in gold for your loved ones",
              maxLines: 2,
              maxFontSize: 12,
              minFontSize: 8,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: widget.height * 0.02),
          Expanded(
            child: GiftingPageView(
              width: widget.width,
              height: widget.height,
              changePage: _changeGiftPage,
            ),
          ),
          SizedBox(height: widget.height * 0.02),
          BannerPageIndicator(
            width: widget.width,
            height: widget.height,
            bannerIndex: giftingIndex,
          ),
          SizedBox(height: widget.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundedButton(
                width: widget.width * 0.4,
                height: widget.height * 0.05,
                text: "VIEW ALL",
                horizontalPadding: widget.width * 0.125,
                textColor: Colors.white,
                buttonColor: primaryBackgroud2RoyalBlue.withOpacity(0.8),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
