import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/floatingActionButton.dart';
import 'package:jewel_ar/custom_widgets/unordered_list_widget.dart';
import 'package:jewel_ar/data/constData.dart';
import 'package:jewel_ar/data/static_data.dart';
import 'package:jewel_ar/pages/home_pages/home_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../custom_widgets/contact_us_bottom_sheet.dart';

class CartPage extends StatefulWidget {
  static const String routeName = '/cart-page';
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  SharedPreferences? prefs;
  bool? showProduct;
  bool oneTime = true;
  bool? direct;

  Future<void> showCart() async {
    prefs = await SharedPreferences.getInstance();
    showProduct = prefs!.getBool("show") ?? false;
    setState(() {});
  }

  Future<void> clearCart() async {
    await prefs!.setBool("show", false);
    showProduct = prefs!.getBool("show");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    showCart();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (oneTime) {
      direct = ModalRoute.of(context)!.settings.arguments == null
          ? false
          : ModalRoute.of(context)!.settings.arguments as bool;
      setState(() {
        oneTime = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      toolbarHeight: height * 0.07,
      centerTitle: true,
      title: const AutoSizeText(
        "Bag(0)",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      foregroundColor: Colors.black,
      actions: [
        CircleAvatar(
          radius: width * 0.03,
          backgroundColor: amberColor,
        ),
        SizedBox(width: width * 0.025),
        InkWell(
          onTap: () async {
            await showContactUs(context, width, height);
          },
          child: const Icon(
            Icons.headset_mic_outlined,
            color: Colors.black,
          ),
        ),
        SizedBox(width: width * 0.025),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.zero,
        child: Divider(
          height: 0,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: showProduct == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : showProduct!
              ? SizedBox(
                  width: width,
                  height: height -
                      appBar.preferredSize.height -
                      (direct! ? 0 : height * 0.08),
                  // color: Colors.red,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: width,
                        height: height -
                            appBar.preferredSize.height -
                            (direct! ? 0 : height * 0.08),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: width,
                                height: height * 0.05,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025),
                                color: const Color.fromARGB(255, 1, 27, 48),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.white),
                                        AutoSizeText.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Deliver to: ",
                                              ),
                                              TextSpan(
                                                text: "302002",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          maxFontSize: 16,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const AutoSizeText(
                                      "Change",
                                      maxLines: 1,
                                      maxFontSize: 14,
                                      minFontSize: 10,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: width,
                                height: height * 0.15,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025,
                                    vertical: height * 0.015),
                                color: Colors.amber[200],
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.percent_outlined,
                                          color: amberColor,
                                        ),
                                        SizedBox(width: width * 0.025),
                                        AutoSizeText(
                                          "Available Offers",
                                          maxFontSize: 12,
                                          maxLines: 1,
                                          minFontSize: 10,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.07),
                                      child: UnorderedList([
                                        "Get Extra 10% Instant Discount on Kotak Bank & Bank of Baroda Credit Cards, Minimum Billing Rs. 20,000, Offer is Not Valid on Coins & Solitaries*",
                                        "Get Additional 2% Instant Discount on Prepaid Orders*",
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 5,
                                thickness: 5,
                                color: Colors.black12,
                              ),
                              Container(
                                width: width,
                                height: height * 0.2,
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.025,
                                  vertical: height * 0.02,
                                ),
                                child: LayoutBuilder(
                                  builder: (context, con) => Row(
                                    children: [
                                      Container(
                                        width: con.maxWidth * 0.3,
                                        height: con.maxHeight,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: Colors.black26),
                                        ),
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: const Text("Image"),
                                        ),
                                      ),
                                      Container(
                                        width: con.maxWidth * 0.6,
                                        height: con.maxHeight,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.02,
                                          vertical: height * 0.01,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            AutoSizeText(
                                              "Round N Rad Diamond Rings",
                                              maxFontSize: 12,
                                              minFontSize: 10,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            // SizedBox(height: height * 0.01),
                                            AutoSizeText.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          "Gold: 14 KT | 1.848Gms    "),
                                                  TextSpan(text: "Size: 8"),
                                                ],
                                              ),
                                              maxFontSize: 10,
                                              minFontSize: 8,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black38,
                                              ),
                                            ),
                                            // SizedBox(height: height * 0.01),
                                            AutoSizeText(
                                              "Diamond: 0.045Carat, SI IJ",
                                              maxFontSize: 10,
                                              minFontSize: 8,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black38,
                                              ),
                                            ),
                                            // SizedBox(height: height * 0.01),
                                            AutoSizeText.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: "\u{20b9}15,445  "),
                                                  TextSpan(
                                                    text: "\u{20b9}17,161",
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              maxFontSize: 12,
                                              minFontSize: 10,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            // SizedBox(height: height * 0.01),
                                            AutoSizeText.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Delivery Between ",
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "Jun 16, 2023 - Jun 20, 2023",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              maxFontSize: 10,
                                              minFontSize: 8,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: con.maxWidth * 0.1,
                                        height: con.maxHeight,
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await clearCart();
                                              },
                                              child: const Icon(Icons.close),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                height: 5,
                                thickness: 5,
                                color: Colors.black12,
                              ),
                              Container(
                                width: width,
                                height: height * 0.07,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.percent_outlined,
                                            color: amberColor),
                                        SizedBox(width: width * 0.02),
                                        AutoSizeText(
                                          "No Coupons Available",
                                          maxFontSize: 14,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: amberColor,
                                      size: 40,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 5,
                                thickness: 5,
                                color: Colors.black12,
                              ),
                              Container(
                                width: width,
                                height: height * 0.07,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.card_giftcard_outlined,
                                            color: amberColor),
                                        SizedBox(width: width * 0.02),
                                        AutoSizeText(
                                          "Make it Gift wrap this Product",
                                          maxFontSize: 14,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    CupertinoSwitch(
                                        value: false, onChanged: (value) {}),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 5,
                                thickness: 5,
                                color: Colors.black12,
                              ),
                              Container(
                                width: width,
                                height: height * 0.08,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.card_giftcard_outlined,
                                            color: amberColor),
                                        SizedBox(width: width * 0.02),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AutoSizeText(
                                              "You dont' have enough coins to redeem",
                                              maxFontSize: 14,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: height * 0.005),
                                            AutoSizeText(
                                              "Tap here to see Melorra Coins",
                                              maxFontSize: 12,
                                              minFontSize: 10,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color:
                                                    amberColor.withOpacity(0.8),
                                                // fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Checkbox(
                                        value: false, onChanged: (value) {}),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: 5,
                                thickness: 5,
                                color: Colors.black12,
                              ),
                              Container(
                                width: width,
                                height: height * 0.4,
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.025,
                                  vertical: height * 0.02,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        AutoSizeText(
                                          "Price Details (1 Item)",
                                          maxFontSize: 20,
                                          minFontSize: 16,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          "Total MRP",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        AutoSizeText(
                                          "\u{20b9}17,161",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          "Discount on MRP",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        AutoSizeText(
                                          "-\u{20b9}1,716",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          "Shipping Charge",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        AutoSizeText(
                                          "FREE",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          "Gift Wrap",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        AutoSizeText(
                                          "FREE",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    const Divider(
                                      height: 5,
                                      thickness: 1,
                                      color: Colors.black12,
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          "Total Amount",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        AutoSizeText(
                                          "\u{20b9}15,445",
                                          maxFontSize: 14,
                                          minFontSize: 10,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * 0.025),
                                    Container(
                                      width: width,
                                      height: height * 0.05,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.green,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: AutoSizeText(
                                        "Yay! You Saved \u{20b9}1,716 on this order!",
                                        maxFontSize: 12,
                                        minFontSize: 10,
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: width * 0.5,
                                          height: height * 0.175,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[50],
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-2, 0),
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                "BIS Hallmarked Jewellery",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.01),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.05),
                                                child: const AutoSizeText(
                                                  "SGL & IGI Certified diamonds, 100% real authentic jewellery",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  maxFontSize: 10,
                                                  minFontSize: 10,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.5,
                                          height: height * 0.175,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[50],
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-2, 0),
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                "Lifetime Exchange",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.01),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.09),
                                                child: const AutoSizeText(
                                                  "Get 100% of the gold value at prevailing market rates",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  maxFontSize: 10,
                                                  minFontSize: 10,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: width * 0.5,
                                          height: height * 0.175,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[50],
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-2, 0),
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                "Cash / Card on Delivery",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.01),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.125),
                                                child: const AutoSizeText(
                                                  "Available Across 25,000 pincodes",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  maxFontSize: 10,
                                                  minFontSize: 10,
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.5,
                                          height: height * 0.175,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[50],
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-2, 0),
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                spreadRadius: 3,
                                              ),
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                "30 Day Return Policy",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(height: height * 0.01),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.05),
                                                child: const AutoSizeText(
                                                  "100% refund, no questions asked. Door step pick up & return",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  maxFontSize: 10,
                                                  minFontSize: 10,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  height:
                                      direct! ? height * 0.15 : height * 0.1),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: width,
                          height: height * 0.082,
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.01,
                            horizontal: width * 0.025,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.black12,
                              ),
                            ),
                            color: Colors.grey[50],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width * 0.3,
                                height: height * 0.06,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "\u{20b9}15,445",
                                      maxFontSize: 14,
                                      minFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.005),
                                    AutoSizeText(
                                      "Total Amount",
                                      maxFontSize: 10,
                                      minFontSize: 8,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.blue[900],
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: width * 0.65,
                                height: height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange[700],
                                ),
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  "CONTINUE",
                                  maxFontSize: 14,
                                  minFontSize: 10,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AutoSizeText(
                        "Your Shopping Bag is Empty!",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        maxFontSize: 18,
                        minFontSize: 14,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      const AutoSizeText(
                        "There is nothing in your bag. Keep\nadding items now!",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        maxFontSize: 14,
                        minFontSize: 10,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      InkWell(
                        onTap: () async {
                          await prefs!.setBool("show", true);
                          showProduct = prefs!.getBool("show");
                          setState(() {});
                        },
                        child: Container(
                          width: width * 0.7,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: amberColor,
                          ),
                          alignment: Alignment.center,
                          child: const AutoSizeText(
                            "START SHOPPING",
                            maxLines: 1,
                            maxFontSize: 16,
                            minFontSize: 12,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: height * 0.1),
        child: CustomFloatingActionButton(height: height),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
