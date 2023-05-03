import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';

class GiftingPageView extends StatelessWidget {
  final double width;
  final double height;
  final Function(int value) changePage;
  const GiftingPageView({
    super.key,
    required this.width,
    required this.height,
    required this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: changePage,
      itemCount: 5,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            appLevelNavigatorKey.currentState!
                .pushNamed(ListingPage.routeName, arguments: "For Wife");
          },
          child: Container(
            width: width,
            height: height * 0.4,
            padding: EdgeInsets.only(
              left: width * 0.2,
              right: width * 0.2,
              top: height * 0.18,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orange.shade200,
                  Colors.orange.shade300,
                ],
              ),
            ),
            child: Column(
              children: [
                const AutoSizeText(
                  "For Wife",
                  maxLines: 1,
                  maxFontSize: 30,
                  minFontSize: 25,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const AutoSizeText(
                  "Show her you know her in these must-have styles",
                  maxLines: 2,
                  maxFontSize: 16,
                  minFontSize: 10,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: height * 0.03),
                const AutoSizeText(
                  "EXPLORE",
                  maxLines: 1,
                  maxFontSize: 18,
                  minFontSize: 10,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
