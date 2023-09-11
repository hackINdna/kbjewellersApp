import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../custom_widgets/contact_us_bottom_sheet.dart';

class TrustFeaturesPage extends StatelessWidget {
  static const String routeName = '/trust-features-page';
  const TrustFeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const AutoSizeText(
          "MELORRA",
          maxLines: 1,
          maxFontSize: 18,
          minFontSize: 16,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await showContactUs(context, width, height);
            },
            icon: const Icon(
              Icons.headset_mic_outlined,
              color: Colors.black,
            ),
          ),
        ],
        toolbarHeight: height * 0.07,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: height * 0.02),
        child: Column(
          children: [
            const AutoSizeText(
              "The Melorra Assurance",
              maxLines: 1,
              maxFontSize: 22,
              minFontSize: 18,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: const AutoSizeText(
                "When it comes to fine jewellery, we believe you deserve the best! The finest quality gold, the best shopping experience and the easiest processes. See how we delight you at every step.",
                textAlign: TextAlign.center,
                maxLines: 4,
                maxFontSize: 14,
                minFontSize: 12,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              width: width,
              height: height * 0.5,
              margin: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[50],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              width: width,
              height: height * 0.5,
              margin: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[50],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              width: width,
              height: height * 0.5,
              margin: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[50],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              width: width,
              height: height * 0.5,
              margin: EdgeInsets.symmetric(horizontal: width * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[50],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
