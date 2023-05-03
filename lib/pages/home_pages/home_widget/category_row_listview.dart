import 'package:flutter/material.dart';
import 'package:jewel_ar/pages/offers_page/offer_page.dart';

import '../../../data/static_data.dart';
import '../listing_pages/listing_page.dart';

class CategoryRowListView extends StatelessWidget {
  final MediaQueryData mediaQuery;
  final bool pressed;
  const CategoryRowListView({
    super.key,
    required this.mediaQuery,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.1,
      // color: Colors.red,
      child: ListView.separated(
        itemCount: circleCategoryList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.025,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            appLevelNavigatorKey.currentState!.pushNamed(
              circleCategoryList[index].values.toList()[1] == "Offers"
                  ? OffersPage.routeName
                  : ListingPage.routeName,
              arguments: circleCategoryList[index].values.toList()[1],
            );
          },
          splashFactory: NoSplash.splashFactory,
          // excludeFromSemantics: false,
          // enableFeedback: false,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor:
                    Colors.amber.withOpacity(pressed ? 0.20 : 0.40),
                maxRadius: mediaQuery.size.height * 0.035,
              ),
              Text(
                circleCategoryList[index].values.toList()[1],
                style: TextStyle(
                  fontSize: 10,
                  color: pressed ? Colors.black26 : Colors.black,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: mediaQuery.size.width * 0.05),
      ),
    );
  }
}
