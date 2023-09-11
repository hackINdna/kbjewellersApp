import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/data/constData.dart';

import '../../custom_widgets/contact_us_bottom_sheet.dart';
import '../../custom_widgets/custom_radio_with_text.dart';
import '../../data/static_data.dart';

class CollectionPage extends StatefulWidget {
  static const String routeName = '/collection-page';
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  String _selectCollection = "Spring / Summer 2023";

  void changeCollection(String value) {
    setState(() {
      _selectCollection = value;
    });
    appLevelNavigatorKey.currentState!.pop();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var width = mediaQuery.size.width;
    var height = mediaQuery.size.height;

    var appBar = AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: const AutoSizeText(
        "All Collections",
        maxLines: 1,
        maxFontSize: 18,
        minFontSize: 16,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
          height * 0.07,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                showCollection(width, height);
              },
              child: Container(
                width: width * 0.6,
                height: height * 0.05,
                margin: EdgeInsets.only(bottom: height * 0.015),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.orange,
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      _selectCollection,
                      maxLines: 1,
                      maxFontSize: 14,
                      minFontSize: 12,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: width,
        height: height - appBar.preferredSize.height - mediaQuery.padding.top,
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            width: width,
            height: height * 0.595,
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
                  "Gusty Gold",
                  maxLines: 1,
                  maxFontSize: 20,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.04),
                Container(
                  width: width,
                  height: height * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                SizedBox(height: height * 0.04),
                const AutoSizeText(
                  "Inspired by this bold combat fashion trend that speaks of an effortless style, we have created a Diamond and Gold jewellery collection to cater for all your fashion needs.",
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
                  "EXPLORE COLLECTION",
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
    );
  }

  Future<void> showCollection(double width, double height) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Container(
            width: width,
            height: height * 0.6,
            padding: EdgeInsets.only(
              left: width * 0.025,
              right: width * 0.025,
              top: height * 0.03,
              // bottom: height * 0.01,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AutoSizeText(
                      "Select a season",
                      maxLines: 1,
                      maxFontSize: 20,
                      minFontSize: 16,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        appLevelNavigatorKey.currentState!.pop();
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Expanded(
                  child: SizedBox(
                    width: width,
                    // height: height * 0.4,
                    // color: Colors.grey,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: height * 0.01),
                      itemCount: seasonCollection.length,
                      itemBuilder: (context, index) => Container(
                        width: width,
                        height: height * 0.03,
                        alignment: Alignment.centerLeft,
                        // color: Colors.red,
                        child: RadioWithText(
                          text: seasonCollection[index],
                          groupValue: _selectCollection,
                          value: seasonCollection[index],
                          onChanged: changeCollection,
                          setState: setState,
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: height * 0.02),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
