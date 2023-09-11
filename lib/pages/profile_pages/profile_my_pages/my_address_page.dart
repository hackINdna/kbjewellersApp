import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../../custom_widgets/floatingActionButton.dart';

class MyAddressPage extends StatefulWidget {
  static const String routeName = "/my-address-page";
  const MyAddressPage({super.key});

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;
    var appBar = AppBar(
      foregroundColor: Colors.black,
      toolbarHeight: height * 0.07,
      centerTitle: true,
      // backgroundColor: Colors.grey,

      title: const AutoSizeText(
        "My Address",
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
        child: Divider(
          height: 0,
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(height: height * 0.02),
          Container(
            width: width,
            height: height * 0.05,
            margin: EdgeInsets.symmetric(horizontal: width * 0.025),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(color: Colors.black),
            ),
            padding: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: const FittedBox(
              child: Text(
                "+ADD NEW ADDRESS",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(height: height),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
