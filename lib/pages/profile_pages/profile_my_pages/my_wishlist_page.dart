import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../../custom_widgets/floatingActionButton.dart';

class MyWishlistPage extends StatefulWidget {
  static const String routeName = "/my-wishlist-page";
  const MyWishlistPage({super.key});

  @override
  State<MyWishlistPage> createState() => _MyWishlistPageState();
}

class _MyWishlistPageState extends State<MyWishlistPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      foregroundColor: Colors.black,
      // toolbarHeight: height * 0.07,
      centerTitle: true,
      title: const AutoSizeText(
        "My Wishlist(0)",
        maxFontSize: 16,
        maxLines: 1,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
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
        child: Divider(),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        width: width,
        child: Column(
          children: [
            SizedBox(height: height * 0.07),
            const AutoSizeText(
              "Your Wishlist",
              maxFontSize: 40,
              maxLines: 1,
              minFontSize: 35,
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.08),
            const Icon(
              Icons.heart_broken_outlined,
              size: 65,
            ),
            SizedBox(height: height * 0.05),
            const AutoSizeText(
              "Ah, you don't have any wishlist yet!",
              textAlign: TextAlign.center,
              maxFontSize: 25,
              maxLines: 2,
              minFontSize: 20,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.05),
            const AutoSizeText(
              "When you add jewellery to wishlist, they will be saved here for quick access.",
              textAlign: TextAlign.center,
              maxFontSize: 18,
              minFontSize: 14,
              maxLines: 2,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            SizedBox(height: height * 0.07),
            Container(
              width: width * 0.8,
              height: height * 0.06,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange[700]!,
                ),
              ),
              alignment: Alignment.center,
              child: AutoSizeText(
                "Browse our catelog of jewellery",
                maxFontSize: 18,
                minFontSize: 14,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(height: height),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
