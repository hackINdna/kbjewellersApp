import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../data/constData.dart';

class OffersPage extends StatelessWidget {
  static const String routeName = '/offers-page';
  const OffersPage({super.key});

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
                onTap: () {},
                child: const Icon(
                  Icons.headset_mic_outlined,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: width * 0.04),
              InkWell(
                onTap: () {},
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
                onTap: () {},
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: const AutoSizeText(
                "Offers",
                maxFontSize: 18,
                minFontSize: 16,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            OfferBoxItem(
              width: width,
              height: height,
              text: "30% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
            SizedBox(height: height * 0.04),
            OfferBoxItem(
              width: width,
              height: height,
              text: "25% OFF",
            ),
          ],
        ),
      ),
    );
  }
}

class OfferBoxItem extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  const OfferBoxItem({
    super.key,
    required this.width,
    required this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.415,
      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[50],
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black26,
            blurRadius: 3,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: amberWithOpacity.withOpacity(0.3),
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AutoSizeText(
                  "SHOP NOW",
                  maxFontSize: 16,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange,
                  ),
                ),
                AutoSizeText(
                  "View T&C",
                  maxFontSize: 16,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
