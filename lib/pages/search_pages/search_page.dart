import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/collection_page/collection_page.dart';
import 'package:jewel_ar/pages/home_pages/home_widget/list_item.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/item_details_page.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/listing_page.dart';

import '../../data/constData.dart';

class SearchPage extends StatefulWidget {
  static const String routeName = "/search-page";
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      backgroundColor: Colors.grey[50],
      foregroundColor: Colors.black,
      elevation: 0,
      title: Container(
        width: width * 0.8,
        // height: height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade300,
            ),
            suffixIcon: const Icon(
              Icons.mic_none_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ),
      titleSpacing: 0,
      toolbarHeight: height * 0.075,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.005),
        child: Container(
          width: width,
          height: 1,
          color: Colors.grey.shade300,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: height * 0.02),
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.18,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    "Trending Searches",
                    maxFontSize: 12,
                    minFontSize: 8,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Diamond Rings",
                      );
                    },
                    child: SearchTerms(
                      width: width,
                      text: "Diamond Rings",
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Necklace",
                      );
                    },
                    child: SearchTerms(
                      width: width,
                      text: "Necklace",
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Nose Pins",
                      );
                    },
                    child: SearchTerms(
                      width: width,
                      text: "Nose Pins",
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: height * 0.015,
              color: Colors.grey.shade200,
            ),
            Container(
              width: width,
              height: height * 0.4,
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                    child: const AutoSizeText(
                      "Your Recently Checked Products",
                      maxFontSize: 16,
                      minFontSize: 14,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          appLevelNavigatorKey.currentState!.pushNamed(
                            ItemDetailsPage.routeName,
                          );
                        },
                        child: SizedBox(
                          width: width * 0.4,
                          child: const ListItem(),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: width * 0.05,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
            Divider(
              thickness: height * 0.015,
              color: Colors.grey.shade200,
            ),
            Container(
              width: width,
              height: height * 0.4,
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                    child: const AutoSizeText(
                      "Checkout our New Arrivals",
                      maxFontSize: 16,
                      minFontSize: 14,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          appLevelNavigatorKey.currentState!.pushNamed(
                            ItemDetailsPage.routeName,
                          );
                        },
                        child: SizedBox(
                          width: width * 0.4,
                          child: const ListItem(),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: width * 0.05,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
            Divider(
              thickness: height * 0.015,
              color: Colors.grey.shade200,
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.015),
                  const AutoSizeText(
                    "Explore our New Collection",
                    maxFontSize: 16,
                    minFontSize: 14,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  const AutoSizeText(
                    "Choose from 10000+ trendy, lightweight and affordable designer pieces!",
                    maxFontSize: 12,
                    minFontSize: 8,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(height: height * 0.035),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Diamond Bubble Collection",
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          "Diamond Bubble Collection",
                          maxLines: 1,
                          maxFontSize: 20,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: height * 0.015),
                        Container(
                          width: width,
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: amberWithOpacity.withOpacity(0.3),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        const AutoSizeText(
                          "EXPLORE COLLECTION",
                          maxLines: 1,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.035),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Gusty Gold Collection",
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          "Gusty Gold Collection",
                          maxLines: 1,
                          maxFontSize: 20,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: height * 0.015),
                        Container(
                          width: width,
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: amberWithOpacity.withOpacity(0.3),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        const AutoSizeText(
                          "EXPLORE COLLECTION",
                          maxLines: 1,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.035),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!.pushNamed(
                        ListingPage.routeName,
                        arguments: "Golden Floral Collection",
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          "Golden Floral Collection",
                          maxLines: 1,
                          maxFontSize: 20,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: height * 0.015),
                        Container(
                          width: width,
                          height: height * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: amberWithOpacity.withOpacity(0.3),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        const AutoSizeText(
                          "EXPLORE COLLECTION",
                          maxLines: 1,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.06),
                  InkWell(
                    onTap: () {
                      appLevelNavigatorKey.currentState!
                          .pushNamed(CollectionPage.routeName);
                    },
                    child: Container(
                      width: width,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                      child: const FittedBox(
                        child: Text(
                          "VIEW ALL COLLECTIONS",
                          style: TextStyle(
                            // fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
            // SizedBox(height: height),
          ],
        ),
      ),
    );
  }
}

class SearchTerms extends StatelessWidget {
  final double width;
  final String text;
  const SearchTerms({
    super.key,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.search,
          color: Colors.black,
        ),
        SizedBox(width: width * 0.025),
        AutoSizeText(
          text,
          maxFontSize: 14,
          minFontSize: 10,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
