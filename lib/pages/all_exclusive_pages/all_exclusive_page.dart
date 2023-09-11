import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/contact_us_bottom_sheet.dart';

import '../../data/constData.dart';

class AllExclusivePage extends StatelessWidget {
  static const String routeName = '/all-exclusive-page';
  const AllExclusivePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      backgroundColor: Colors.grey[50],
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: const AutoSizeText(
        "All Exclusives",
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
      toolbarHeight: height * 0.05,
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: height * 0.02),
        child: Container(
          width: width,
          height: height - appBar.preferredSize.height,
          child: ListView.separated(
            itemCount: 7,
            itemBuilder: (context, index) => Container(
              width: width,
              height: height * 0.58,
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.02),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                // color: Colors.grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AutoSizeText(
                    "#LoveStartsWithSelf",
                    maxLines: 1,
                    maxFontSize: 20,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    width: width,
                    height: height * 0.4,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(15),
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
                  SizedBox(height: height * 0.03),
                  const AutoSizeText(
                    "Gift a heart in gold to yourself or your special someone!",
                    maxLines: 4,
                    maxFontSize: 12,
                    minFontSize: 10,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const AutoSizeText(
                    "EXPLORE",
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
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey.shade200,
              thickness: height * 0.025,
            ),
          ),
        ),
      ),
    );
  }
}
