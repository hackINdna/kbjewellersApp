import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/constData.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/cart_pages/cart_page.dart';
import 'package:jewel_ar/pages/home_pages/listing_pages/item_details_page.dart';

import '../../../custom_widgets/bottom_filter_area.dart';
import '../../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../../custom_widgets/custom_checkbox_with_text.dart';
import '../../../custom_widgets/custom_filter_container_button.dart';
import '../../../custom_widgets/custom_radio_with_text.dart';
import '../../profile_pages/profile_my_pages/my_wishlist_page.dart';
import '../../search_pages/search_page.dart';
import '../home_widget/list_item.dart';
import 'filter_page.dart';

class ListingPage extends StatefulWidget {
  static const String routeName = '/listing-page';
  const ListingPage({super.key});

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  String pageName = "";

  String sortBySeletect = "";

  bool _getArguments = false;
  bool _lessThan1000 = false;
  bool _1000_2000 = false;
  bool _2000_3000 = false;
  bool _3000_5000 = false;
  bool _5000Above = false;

  @override
  void didChangeDependencies() {
    if (!_getArguments) {
      var args = ModalRoute.of(context)!.settings.arguments as String;
      pageName = args;
      _getArguments = true;
    }

    super.didChangeDependencies();
  }

  void _changeSortValue(String value) {
    setState(() {
      sortBySeletect = value;
    });
  }

  void _changePriceValue(String valueText, bool value) {
    if (valueText == "Less than \u{20b9} 10000") {
      setState(() {
        _lessThan1000 = value;
      });
    } else if (valueText == "\u{20b9} 10000 to \u{20b9} 20000") {
      setState(() {
        _1000_2000 = value;
      });
    } else if (valueText == "\u{20b9} 20000 to \u{20b9} 30000") {
      setState(() {
        _2000_3000 = value;
      });
    } else if (valueText == "\u{20b9} 30000 to \u{20b9} 50000") {
      setState(() {
        _3000_5000 = value;
      });
    } else if (valueText == "\u{20b9} 50000 and above") {
      setState(() {
        _5000Above = value;
      });
    }
  }

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
      leadingWidth: width * 0.12,
      title: AutoSizeText(
        "$pageName(9999)",
        maxLines: 1,
        maxFontSize: 18,
        minFontSize: 14,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
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
    var mainHeight =
        height - appBar.preferredSize.height - mediaQuery.padding.top;
    var mainBodyHeight = height -
        appBar.preferredSize.height -
        mediaQuery.padding.top -
        height * 0.11;
    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        // color: Colors.red,
        height: mainHeight,
        width: width,
        child: Column(
          children: [
            SizedBox(
              // color: Colors.green,
              width: width,
              height: mainBodyHeight,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AutoSizeText(
                      pageName,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxFontSize: 22,
                      minFontSize: 18,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    const AutoSizeText(
                      "9999 products found",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      maxFontSize: 12,
                      minFontSize: 8,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      children: [
                        FilterContainerButton(
                          height: height,
                          width: width,
                          text: "Clear All",
                        ),
                        SizedBox(width: width * 0.025),
                        FilterContainerButton(
                          height: height,
                          width: width,
                          text: "Ready To Ship",
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: height * 0.325,
                        mainAxisSpacing: height * 0.02,
                        crossAxisSpacing: width * 0.045,
                      ),
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          appLevelNavigatorKey.currentState!
                              .pushNamed(ItemDetailsPage.routeName);
                        },
                        child: const ListItem(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: width,
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.025, vertical: height * 0.005),
                // color: Colors.orange,
                child: LayoutBuilder(
                  builder: (context, constraints) => BottomFilterArea(
                    constraints: constraints,
                    priceTap: showPriceModal,
                    sortTap: showSortModal,
                    filterRoutName: FilterPage.routeName,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Functions are here

  Future<void> showSortModal(double width, double height) async {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Container(
            width: width,
            height: height * 0.4,
            padding: EdgeInsets.only(
              left: width * 0.025,
              right: width * 0.025,
              top: height * 0.03,
              bottom: height * 0.01,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AutoSizeText(
                      "Sort By",
                      maxLines: 1,
                      maxFontSize: 20,
                      minFontSize: 16,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        appLevelNavigatorKey.currentState!.pop();
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Popularity",
                    groupValue: sortBySeletect,
                    value: "Popularity",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Recommended",
                    groupValue: sortBySeletect,
                    value: "Recommended",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Latest",
                    groupValue: sortBySeletect,
                    value: "Latest",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Price high to low",
                    groupValue: sortBySeletect,
                    value: "Price high to low",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Discount %",
                    groupValue: sortBySeletect,
                    value: "Discount %",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.03,
                  // color: Colors.red,
                  child: RadioWithText(
                    text: "Price low to high",
                    groupValue: sortBySeletect,
                    value: "Price low to high",
                    onChanged: _changeSortValue,
                    setState: setState,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> showPriceModal(double width, double height) async {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Container(
            width: width,
            height: height * 0.4,
            padding: EdgeInsets.only(
              left: width * 0.025,
              right: width * 0.025,
              top: height * 0.03,
              bottom: height * 0.01,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AutoSizeText(
                      "Price",
                      maxLines: 1,
                      maxFontSize: 20,
                      minFontSize: 16,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        appLevelNavigatorKey.currentState!.pop();
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                CheckBoxWithText(
                  width: width,
                  height: height,
                  setState: setState,
                  text: "Less than \u{20b9} 10000",
                  changeValue: _changePriceValue,
                  value: _lessThan1000,
                ),
                SizedBox(height: height * 0.015),
                CheckBoxWithText(
                  width: width,
                  height: height,
                  setState: setState,
                  text: "\u{20b9} 10000 to \u{20b9} 20000",
                  changeValue: _changePriceValue,
                  value: _1000_2000,
                ),
                SizedBox(height: height * 0.015),
                CheckBoxWithText(
                  width: width,
                  height: height,
                  setState: setState,
                  text: "\u{20b9} 20000 to \u{20b9} 30000",
                  changeValue: _changePriceValue,
                  value: _2000_3000,
                ),
                SizedBox(height: height * 0.015),
                CheckBoxWithText(
                  width: width,
                  height: height,
                  setState: setState,
                  text: "\u{20b9} 30000 to \u{20b9} 50000",
                  changeValue: _changePriceValue,
                  value: _3000_5000,
                ),
                SizedBox(height: height * 0.015),
                CheckBoxWithText(
                  width: width,
                  height: height,
                  setState: setState,
                  text: "\u{20b9} 50000 and above",
                  changeValue: _changePriceValue,
                  value: _5000Above,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    appLevelNavigatorKey.currentState!.pop();
                  },
                  child: Container(
                    width: width,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: amberColor,
                    ),
                    alignment: Alignment.center,
                    child: const AutoSizeText(
                      "Done",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      maxFontSize: 14,
                      minFontSize: 10,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
