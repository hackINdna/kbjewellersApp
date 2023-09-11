import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jewel_ar/custom_widgets/custom_rounded_button.dart';
import 'package:jewel_ar/custom_widgets/floatingActionButton.dart';
import 'package:jewel_ar/data/static_data.dart';

import '../../../custom_widgets/contact_us_bottom_sheet.dart';

class MyMeasurementsPage extends StatefulWidget {
  static const String routeName = "/my-measurements-page";
  const MyMeasurementsPage({super.key});

  @override
  State<MyMeasurementsPage> createState() => _MyMeasurementsPageState();
}

class _MyMeasurementsPageState extends State<MyMeasurementsPage> {
  String rSize = "Select new size (circumference in mm)";
  String bSize = "Select new size (circumference in mm)";
  String cSize = "Select new size (circumference in mm)";

  Future<void> showOptions(double width, double height, double modalHeight,
      List<String> data, String type) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.symmetric(
            horizontal: width * 0.025, vertical: width * 0.05),
        content: SizedBox(
          width: width,
          height: modalHeight,
          child: Scrollbar(
            // thumbVisibility: true,
            // interactive: true,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    if (type == "ring") {
                      rSize = data[index];
                    } else if (type == "bangle") {
                      bSize = data[index];
                    } else {
                      cSize = data[index];
                    }
                  });
                  appLevelNavigatorKey.currentState!.pop();
                },
                child: SizedBox(
                  width: width,
                  height: height,
                  child: AutoSizeText(
                    data[index],
                    maxFontSize: 14,
                    minFontSize: 10,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

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
        "My Measurements",
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
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width * 0.025),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            const AutoSizeText(
              "Your jewellery sizes",
              maxFontSize: 20,
              maxLines: 1,
              minFontSize: 16,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height * 0.01),
            const AutoSizeText(
              "Sized of the jewellery you purchased are listed here. You can assign personalized aliases for your reference.",
              maxFontSize: 12,
              maxLines: 2,
              minFontSize: 10,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height * 0.02),
            const AutoSizeText(
              "Rings",
              maxFontSize: 20,
              maxLines: 1,
              minFontSize: 16,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.025),
            InkWell(
              onTap: () async {
                await showOptions(
                    width, height * 0.06, height, ringSize, "ring");
              },
              child: Container(
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.orange[700]!,
                  ),
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                child: AutoSizeText(
                  rSize,
                  maxFontSize: 16,
                  maxLines: 1,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 16,
                    color: rSize == "Select new size (circumference in mm)"
                        ? Colors.black26
                        : Colors.orange[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            const Divider(
              height: 0,
              thickness: 2,
              color: Colors.black12,
            ),
            SizedBox(height: height * 0.02),
            const AutoSizeText(
              "Bangles",
              maxFontSize: 20,
              maxLines: 1,
              minFontSize: 16,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.025),
            InkWell(
              onTap: () async {
                await showOptions(
                    width, height * 0.06, height * 0.72, bangleSize, "bangle");
              },
              child: Container(
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.orange[700]!,
                  ),
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                child: AutoSizeText(
                  bSize,
                  maxFontSize: 16,
                  maxLines: 1,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 16,
                    color: bSize == "Select new size (circumference in mm)"
                        ? Colors.black26
                        : Colors.orange[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            const Divider(
              height: 0,
              thickness: 2,
              color: Colors.black12,
            ),
            SizedBox(height: height * 0.02),
            const AutoSizeText(
              "Cuffs",
              maxFontSize: 20,
              maxLines: 1,
              minFontSize: 16,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.025),
            InkWell(
              onTap: () async {
                await showOptions(
                    width, height * 0.06, height * 0.24, cuffSize, "cuff");
              },
              child: Container(
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.orange[700]!,
                  ),
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: width * 0.025),
                child: AutoSizeText(
                  cSize,
                  maxFontSize: 16,
                  maxLines: 1,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 16,
                    color: cSize == "Select new size (circumference in mm)"
                        ? Colors.black26
                        : Colors.orange[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.165),
            Divider(
              height: 0,
              thickness: 10,
              color: Colors.grey[200],
            ),
            Expanded(
              child: SizedBox(
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRoundedButton(
                      width: width,
                      height: height * 0.05,
                      text: "UPDATE",
                      horizontalPadding: width * 0.39,
                      textColor: Colors.white,
                      buttonColor: Colors.orange[700]!,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: height * 0.12),
        child: CustomFloatingActionButton(height: height),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
