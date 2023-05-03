import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/customer_message_pages/customer_message_page.dart';

import '../../../custom_widgets/customer_review_item.dart';
import '../../../custom_widgets/view_all_with_icon.dart';
import '../../../data/constData.dart';

class CustomerReviewSection extends StatelessWidget {
  const CustomerReviewSection({
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
      height: height * 0.4,
      // color: primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            child: const AutoSizeText(
              "What our customers say",
              maxLines: 1,
              maxFontSize: 19,
              minFontSize: 14,
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // SizedBox(height: height * 0.02),
          SizedBox(
            width: width,
            height: height * 0.35,
            child: ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.025, vertical: height * 0.03),
              scrollDirection: Axis.horizontal,
              children: [
                CustomerReviewItem(
                  width: width,
                  text: "Customer Review 1",
                ),
                SizedBox(width: width * 0.08),
                CustomerReviewItem(
                  width: width,
                  text: "Customer Review 2",
                ),
                SizedBox(width: width * 0.08),
                CustomerReviewItem(
                  width: width,
                  text: "Customer Review 3",
                ),
                SizedBox(width: width * 0.08),
                CustomerReviewItem(
                  width: width,
                  text: "Customer Review 4",
                ),
                SizedBox(width: width * 0.08),
                CustomerReviewItem(
                  width: width,
                  text: "Customer Review 5",
                ),
                SizedBox(width: width * 0.08),
                InkWell(
                  onTap: () {
                    appLevelNavigatorKey.currentState!
                        .pushNamed(CustomerMessagePage.routeName);
                  },
                  child: Container(
                    width: width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // color: amberColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [boxShadow]),
                    alignment: Alignment.center,
                    child: ViewAllWithIcon(width: width),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
