import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/constData.dart';

class CartPage extends StatelessWidget {
  static const String routeName = '/cart-page';
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    return Scaffold(
      body: Center(
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
            Container(
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
          ],
        ),
      ),
    );
  }
}
