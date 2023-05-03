import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../data/constData.dart';

class GiftGuidePage extends StatelessWidget {
  static const String routeName = '/gift-guide-page';
  const GiftGuidePage({super.key});

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
        child: Column(
          children: [
            Container(
              width: width,
              height: height * 0.3,
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              child: const Text("Image"),
            ),
            SizedBox(height: height * 0.02),
            const AutoSizeText(
              "The Gift Guide",
              maxFontSize: 20,
              minFontSize: 18,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: const AutoSizeText(
                "You can never go wrong with some gorgeous jewellery. Celebrate your loved ones and make your precious moments last forever with designs that are perfect for every occasion.",
                textAlign: TextAlign.center,
                maxFontSize: 12,
                minFontSize: 10,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Wife"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Mother"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Suprise Your Girlfriend"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Sister"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Daughter"),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: amberWithOpacity.withOpacity(0.3),
              ),
              alignment: Alignment.center,
              child: const Text("Friends"),
            ),
          ],
        ),
      ),
    );
  }
}
