import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/data/constData.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../../custom_widgets/floatingActionButton.dart';

class MyOrdersPage extends StatefulWidget {
  static const String routeName = "/my-orders-page";
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
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
        "My Orders",
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
      body: SizedBox(
        width: width,
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Icon(Icons.warning_amber),
            SizedBox(height: height * 0.03),
            AutoSizeText(
              "No active orders",
              maxFontSize: 18,
              maxLines: 1,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.01),
            AutoSizeText(
              "There are no recent orders to show.",
              maxFontSize: 12,
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.03),
            CustomRoundedButton(
              width: width * 0.7,
              height: height * 0.05,
              text: "START SHOPPING",
              horizontalPadding: width * 0.2,
              textColor: Colors.white,
              buttonColor: amberColor,
            ),
            SizedBox(height: height * 0.03),
            Divider(
              color: Colors.grey.shade200,
              thickness: height * 0.02,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(height: height),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
