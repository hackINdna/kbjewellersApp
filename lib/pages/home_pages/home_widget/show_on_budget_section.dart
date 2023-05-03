import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';

import '../../../data/constData.dart';
import '../../../data/static_data.dart';

class ShopOnBudgetSection extends StatelessWidget {
  const ShopOnBudgetSection({
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
      // color: primaryBackground,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Shop on a Budget",
            maxFontSize: 19,
            minFontSize: 14,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.008),
          const AutoSizeText(
            "Affordable isn't just a word - it's our motto",
            maxFontSize: 12,
            minFontSize: 8,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            width: width,
            height: height * 0.45,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: height * 0.22,
                crossAxisSpacing: height * 0.01,
                mainAxisSpacing: height * 0.01,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: budgetCategoryList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  appLevelNavigatorKey.currentState!.pushNamed(
                    ListingPage.routeName,
                    arguments: budgetCategoryList[index].values.toList()[0],
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: primaryBackground,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(width * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AutoSizeText(
                          budgetCategoryList[index].values.toList()[0],
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 16,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        // SizedBox(height: height * 0.0025),
                        AutoSizeText(
                          "${budgetCategoryList[index].values.toList()[1]} Styles",
                          maxLines: 1,
                          maxFontSize: 12,
                          minFontSize: 8,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
