import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/item_details_page.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';

import '../../../custom_widgets/view_all_with_icon.dart';
import '../../../data/constData.dart';
import 'trending_melorra_list_item.dart';

class TrendingMelorraListView extends StatelessWidget {
  const TrendingMelorraListView({
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
      height: height * 0.35,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade400,
            Colors.black,
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.025, vertical: height * 0.025),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: width * 0.15,
            height: height * 0.05,
            alignment: Alignment.center,
            child: const AutoSizeText(
              "Popular Picks",
              maxLines: 2,
              maxFontSize: 14,
              minFontSize: 8,
              style: TextStyle(
                height: 1.5,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: width * 0.15),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!
                  .pushNamed(ItemDetailsPage.routeName);
            },
            child: TrendingMelorraListItem(
              width: width,
              height: height,
              index: 0,
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!
                  .pushNamed(ItemDetailsPage.routeName);
            },
            child: TrendingMelorraListItem(
              width: width,
              height: height,
              index: 1,
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!
                  .pushNamed(ItemDetailsPage.routeName);
            },
            child: TrendingMelorraListItem(
              width: width,
              height: height,
              index: 2,
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!
                  .pushNamed(ItemDetailsPage.routeName);
            },
            child: TrendingMelorraListItem(
              width: width,
              height: height,
              index: 3,
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!
                  .pushNamed(ItemDetailsPage.routeName);
            },
            child: TrendingMelorraListItem(
              width: width,
              height: height,
              index: 4,
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () {
              appLevelNavigatorKey.currentState!.pushNamed(
                  ListingPage.routeName,
                  arguments: "Trending on Melorra");
            },
            child: Container(
              width: width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ViewAllWithIcon(width: width),
            ),
          ),
        ],
      ),
    );
  }
}
