import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/custom_rounded_button.dart';
import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class ShopByCategoriesSection extends StatelessWidget {
  const ShopByCategoriesSection({
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
      height: height * 0.9,
      // color: primaryBackground,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Shop by Categories",
            maxFontSize: 19,
            minFontSize: 14,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.02),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: height * 0.25,
                crossAxisSpacing: width * 0.025,
                mainAxisSpacing: width * 0.025,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopByCategories.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: amberColor,
                  ),
                  padding: EdgeInsets.all(width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        shopByCategories[index].values.toList()[1],
                        maxLines: 1,
                        maxFontSize: 20,
                        minFontSize: 16,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: height * 0.005),
                      AutoSizeText(
                        "Starts from \u{20b9}${shopByCategories[index].values.toList()[2]}",
                        maxLines: 1,
                        maxFontSize: 12,
                        minFontSize: 8,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundedButton(
                width: width * 0.4,
                height: height * 0.05,
                text: "SEE MORE",
                horizontalPadding: width * 0.12,
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
