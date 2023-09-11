import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../data/constData.dart';
import '../../data/static_data.dart';
import '../cart_pages/cart_page.dart';
import '../profile_pages/profile_my_pages/my_wishlist_page.dart';
import '../search_pages/search_page.dart';

class CustomerMessagePage extends StatelessWidget {
  static const String routeName = '/customer-message-page';
  const CustomerMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 0,
      toolbarHeight: height * 0.1,
      leadingWidth: width * 0.12,
      actions: [
        SizedBox(
          child: Row(
            children: [
              InkWell(
                onTap: () async {
                  await showContactUs(context, width, height);
                },
                child: const Icon(
                  Icons.headset_mic_outlined,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {
                  appLevelNavigatorKey.currentState!
                      .pushNamed(SearchPage.routeName);
                },
                child: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {
                  appLevelNavigatorKey.currentState!
                      .pushNamed(MyWishlistPage.routeName);
                },
                child: Badge(
                  backgroundColor: amberWithOpacity,
                  label: const Text("0"),
                  textColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  child: const Icon(
                    Icons.favorite_outline,
                    size: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {
                  appLevelNavigatorKey.currentState!
                      .pushNamed(CartPage.routeName, arguments: true);
                },
                child: Badge(
                  backgroundColor: amberWithOpacity,
                  label: const Text("0"),
                  textColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 22,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: width * 0.04),
            ],
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: width,
        height: height - appBar.preferredSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              child: AutoSizeText(
                "What our customer says",
                maxFontSize: 18,
                minFontSize: 16,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Expanded(
              child: Container(
                width: width,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  itemCount: 20,
                  itemBuilder: (context, index) => Container(
                    width: width,
                    height: height * 0.3,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.025),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          color: Colors.black26,
                          blurRadius: 3,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: height * 0.05),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
