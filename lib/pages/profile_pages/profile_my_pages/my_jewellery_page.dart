import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';

class MyJewelleryPage extends StatefulWidget {
  static const String routeName = "/my-jewellery-page";
  const MyJewelleryPage({super.key});

  @override
  State<MyJewelleryPage> createState() => _MyJewelleryPageState();
}

class _MyJewelleryPageState extends State<MyJewelleryPage> {
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
        "My Jewellery",
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
      //Create this page if it's required
      appBar: appBar,
    );
  }
}
